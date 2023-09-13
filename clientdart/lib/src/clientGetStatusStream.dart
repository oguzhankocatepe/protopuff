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
    await getStatusStream(stub,int.parse(arguments[0]));
  } finally {
    await channel.shutdown();
  }
}

Future<void> getStatusStream(DroneServiceClient stub, int requestedDroneId) async {
  final streamRequest = StatusRequest()..droneId = requestedDroneId;
  final statusStream = stub.getStatusStream(streamRequest);

  await for (var statusResponse in statusStream) {
    print('Streaming - Drone ID: 1');
    print('Drone Mode: ${statusResponse.mode}');
    print('Battery Level: ${statusResponse.batteryLevel}%');
    
  }
}