import 'package:grpc/grpc.dart';
import 'package:protos/src/generated/drone_service.pbgrpc.dart'; 

Future<void> main(List<String> arguments) async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = DroneServiceClient(channel);

  try {
    for( var i = 1 ; i <= 3; i++) 
      await getStatus(stub,i);
  } finally {
    await channel.shutdown();
  }
}

Future<void> getStatus(DroneServiceClient stub, int requestedDroneId) async {
  final statusRequest = StatusRequest()..droneId = requestedDroneId;
  final statusResponse = await stub.getStatus(statusRequest);
  if (statusResponse.mode != Mode.UNKNOWN){
    print('Drone ID: $requestedDroneId');
    print('Drone Mode: ${statusResponse.mode}');
    print('Battery Level: ${statusResponse.batteryLevel}%');
  }
  else{
    print('Invalid Drone ID: $requestedDroneId');
  }
}