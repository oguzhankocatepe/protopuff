import 'package:grpc/grpc.dart';
import 'package:protos/src/generated/drone_service.pbgrpc.dart'; 

Future<void> main(List<String> arguments) async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  final stub = DroneServiceClient(channel);
  String droneId = arguments[0];
  int targetBatteryLevel = int.parse(arguments[1]);
  try {
    await chargeStream(stub,droneId, targetBatteryLevel);
  } finally {
    await channel.shutdown();
  }
}

Future<void> chargeStream(
    DroneServiceClient stub, String droneId, int targetBatteryLevel) async {
  final chargeStreamRequest = ChargeRequest()
    ..droneId = droneId
    ..targetBatteryLevel = targetBatteryLevel.toDouble();

  final chargeStream = stub.chargeStream(chargeStreamRequest);

  await for (var chargeResponse in chargeStream) {
    print('Charging in progress...');
    print('Battery Level: ${chargeResponse.batteryLevel}%');
    if (chargeResponse.chargingComplete) {
      print('Charging complete!');
      break;
    }
    else{
      print('Charging Incomplete!');
    }
  }
}