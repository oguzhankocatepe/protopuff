import logging
from concurrent import futures
import time
import grpc
import sys
sys.path.append('../protos')
from grpc_reflection.v1alpha import reflection
from drone_service_pb2 import AUTO, CHARGING, MANUAL, StatusResponse,SimpleResponse,ChargeResponse, DESCRIPTOR
from drone_service_pb2_grpc import (
    DroneServiceServicer,
    add_DroneServiceServicer_to_server,
)


class DroneService(DroneServiceServicer):
    drones_database = {
        1: {
            "name": "Hancer",
            "mode": MANUAL,
            "battery": 100.0,
        },
        2: {
            "name": "Tuygun",
            "mode": MANUAL,
            "battery": 50.0,
        },
        3: {
            "name": "Dora",
            "mode": MANUAL,
            "battery": 0.0,
        },
    }

    def GetStatus(self, request, context):
        drone_id = request.drone_id
        # drone veritabaninda yoksa
        if drone_id not in self.drones_database:
            logging.warning(f"Drone {drone_id} not found")
            return StatusResponse()

        drone = self.drones_database[drone_id]
        logging.info(f"returning drone {drone_id} status")

        return StatusResponse(
            mode=drone["mode"],
            battery_level=drone["battery"],
        )
    
    def GetStatusStream(self, request, context):
        drone_id = request.drone_id
        # drone veritabaninda yoksa
        if drone_id not in self.drones_database:
            logging.warning(f"Drone {drone_id} not found")
            return

        drone = self.drones_database[drone_id]
        logging.info(f"streaming drone {drone_id} status")

        while True:
            yield StatusResponse(
                mode=drone["mode"],
                battery_level=drone["battery"],
            )
            time.sleep(1)

    def ChangeMode(self, request, context):
        drone_id = request.drone_id
        new_mode = request.new_mode
        # drone id integer olmalı hata verir yoksa
        drone_id = int(drone_id)
        if drone_id not in self.drones_database:
            logging.warning(f"Drone {drone_id} not found")
            response = SimpleResponse(success=False, message=f"Drone {drone_id} not found")
        else:
            self.drones_database[drone_id]['mode'] = new_mode
            response = SimpleResponse(success=True, message="Mode change successful")
        return response
    
    def Charge(self, request, context):
        drone_id = request.drone_id
       
        target_battery_level = request.target_battery_level
        drone_id = int(drone_id)
        if drone_id not in self.drones_database:
            logging.warning(f"Drone {drone_id} not found")
            response = ChargeResponse(charging_complete=False, battery_level=0)
        else:
            if target_battery_level > 100:
                response = ChargeResponse(
                battery_level=self.drones_database[drone_id]['battery'],
                charging_complete=False
                )
            else:
                self.drones_database[drone_id]['battery'] = target_battery_level
                self.drones_database[drone_id]['mode'] = 2
                response = ChargeResponse(
                    battery_level=target_battery_level,
                    charging_complete=True
                )
        return response

    def ChargeStream(self, request, context):
        drone_id = request.drone_id
        target_battery_level = request.target_battery_level
        drone_id = int(drone_id)
        if drone_id not in self.drones_database:
            logging.warning(f"Drone {drone_id} not found")
            return
        if target_battery_level > 100:
            yield ChargeResponse(
            battery_level=self.drones_database[drone_id]['battery'],
            charging_complete=False
            )
            return
        drone = self.drones_database[drone_id]
        logging.info(f"streaming charging status for drone {drone_id}")
        self.drones_database[drone_id]['mode'] = 3
        current_battery_level = drone["battery"]
        while current_battery_level < target_battery_level:
            current_battery_level += 1  
            self.drones_database[drone_id]['battery'] = current_battery_level
            yield ChargeResponse(
                battery_level=current_battery_level,
                charging_complete=False
            )
            time.sleep(1)
            drone = self.drones_database[drone_id]
            current_battery_level = drone["battery"]
        logging.info(f"charging complete for drone {drone_id}")
        yield ChargeResponse(
            battery_level=target_battery_level,
            charging_complete=True
        )
        self.drones_database[drone_id]['mode'] = 1

def serve():
    port = "50051"
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    add_DroneServiceServicer_to_server(DroneService(), server)

    SERVICE_NAMES = (
        DESCRIPTOR.services_by_name["DroneService"].full_name,
        reflection.SERVICE_NAME,
    )
    reflection.enable_server_reflection(SERVICE_NAMES, server)
    server.add_insecure_port("[::]:" + port)
    server.start()
    print("Server started, listening on " + port)
    server.wait_for_termination()


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    serve()