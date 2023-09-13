import 'package:grpc/grpc.dart';
import 'package:protos/src/generated/drone_service.pbgrpc.dart';

Future<void> main(List<String> arguments) async {

  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
 
  final stub = DroneServiceClient(channel);
  int targetBatteryLevel = int.parse(arguments[0]);
  try {
    for( var i = 1 ; i <= 3; i++) 
    await charge(stub, i.toString(), targetBatteryLevel);
  } finally {
    await channel.shutdown();
  }
}

Future<void> charge(DroneServiceClient stub, String droneId, int targetBatteryLevel) async {
  final chargeRequest = ChargeRequest()
    ..droneId = droneId
    ..targetBatteryLevel = targetBatteryLevel.toDouble();

  final chargeResponse = await stub.charge(chargeRequest);
    if (chargeResponse.chargingComplete) {
      print('Drone Id: ${droneId}');
      print('Battery Level: ${chargeResponse.batteryLevel}%');
    }
    else{
      print('Charging Incomplete!');
    }
}