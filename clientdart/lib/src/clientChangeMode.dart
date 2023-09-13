import 'package:grpc/grpc.dart';
import 'package:protos/src/generated/drone_service.pbgrpc.dart'; //drone service client

Future<void> main(List<String> arguments) async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  final stub = DroneServiceClient(channel);
  int droneId = int.parse(arguments[0]);
  int mode = int.parse(arguments[1]);
  try {
    await changeMode(stub, droneId, Mode.values[mode]);
  } finally {
    await channel.shutdown();
  }
}

Future<void> changeMode(DroneServiceClient stub, int droneId, Mode newMode) async {
  final changeModeRequest = ChangeModeRequest()
    ..droneId = droneId.toString()
    ..newMode = newMode;

  final changeModeResponse = await stub.changeMode(changeModeRequest);

  print('Message: ${changeModeResponse.success}');
  print('Message: ${changeModeResponse.message}');
}