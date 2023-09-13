import grpc
import sys
sys.path.append('../protos')
from drone_service_pb2 import StatusRequest
from drone_service_pb2_grpc import DroneServiceStub

def main():
    # sunucuya baglan
    channel = grpc.insecure_channel('localhost:50051')
    stub = DroneServiceStub(channel)
    
    istenen_drone_id = 1
    # GetStatus RPC'sini cagir
    request = StatusRequest(drone_id=istenen_drone_id)
    response = stub.GetStatus(request)
    
    # responsei yazdir
    print(f"Drone ID: {istenen_drone_id}")
    print(f"Drone Modu: {response.mode}")
    print(f"Batarya Seviyesi: {response.battery_level}%")

if __name__ == "__main__":
    main()
