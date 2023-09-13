//
//  Generated code. Do not modify.
//  source: drone_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'drone_service.pb.dart' as $0;

export 'drone_service.pb.dart';

@$pb.GrpcServiceName('drone.DroneService')
class DroneServiceClient extends $grpc.Client {
  static final _$getStatus = $grpc.ClientMethod<$0.StatusRequest, $0.StatusResponse>(
      '/drone.DroneService/GetStatus',
      ($0.StatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatusResponse.fromBuffer(value));
  static final _$getStatusStream = $grpc.ClientMethod<$0.StatusRequest, $0.StatusResponse>(
      '/drone.DroneService/GetStatusStream',
      ($0.StatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatusResponse.fromBuffer(value));
  static final _$changeMode = $grpc.ClientMethod<$0.ChangeModeRequest, $0.SimpleResponse>(
      '/drone.DroneService/ChangeMode',
      ($0.ChangeModeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SimpleResponse.fromBuffer(value));
  static final _$charge = $grpc.ClientMethod<$0.ChargeRequest, $0.ChargeResponse>(
      '/drone.DroneService/Charge',
      ($0.ChargeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChargeResponse.fromBuffer(value));
  static final _$chargeStream = $grpc.ClientMethod<$0.ChargeRequest, $0.ChargeResponse>(
      '/drone.DroneService/ChargeStream',
      ($0.ChargeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChargeResponse.fromBuffer(value));

  DroneServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.StatusResponse> getStatus($0.StatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStatus, request, options: options);
  }

  $grpc.ResponseStream<$0.StatusResponse> getStatusStream($0.StatusRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getStatusStream, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.SimpleResponse> changeMode($0.ChangeModeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeMode, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChargeResponse> charge($0.ChargeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$charge, request, options: options);
  }

  $grpc.ResponseStream<$0.ChargeResponse> chargeStream($0.ChargeRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$chargeStream, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('drone.DroneService')
abstract class DroneServiceBase extends $grpc.Service {
  $core.String get $name => 'drone.DroneService';

  DroneServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StatusRequest, $0.StatusResponse>(
        'GetStatus',
        getStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StatusRequest.fromBuffer(value),
        ($0.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StatusRequest, $0.StatusResponse>(
        'GetStatusStream',
        getStatusStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StatusRequest.fromBuffer(value),
        ($0.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangeModeRequest, $0.SimpleResponse>(
        'ChangeMode',
        changeMode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChangeModeRequest.fromBuffer(value),
        ($0.SimpleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChargeRequest, $0.ChargeResponse>(
        'Charge',
        charge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChargeRequest.fromBuffer(value),
        ($0.ChargeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChargeRequest, $0.ChargeResponse>(
        'ChargeStream',
        chargeStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ChargeRequest.fromBuffer(value),
        ($0.ChargeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.StatusResponse> getStatus_Pre($grpc.ServiceCall call, $async.Future<$0.StatusRequest> request) async {
    return getStatus(call, await request);
  }

  $async.Stream<$0.StatusResponse> getStatusStream_Pre($grpc.ServiceCall call, $async.Future<$0.StatusRequest> request) async* {
    yield* getStatusStream(call, await request);
  }

  $async.Future<$0.SimpleResponse> changeMode_Pre($grpc.ServiceCall call, $async.Future<$0.ChangeModeRequest> request) async {
    return changeMode(call, await request);
  }

  $async.Future<$0.ChargeResponse> charge_Pre($grpc.ServiceCall call, $async.Future<$0.ChargeRequest> request) async {
    return charge(call, await request);
  }

  $async.Stream<$0.ChargeResponse> chargeStream_Pre($grpc.ServiceCall call, $async.Future<$0.ChargeRequest> request) async* {
    yield* chargeStream(call, await request);
  }

  $async.Future<$0.StatusResponse> getStatus($grpc.ServiceCall call, $0.StatusRequest request);
  $async.Stream<$0.StatusResponse> getStatusStream($grpc.ServiceCall call, $0.StatusRequest request);
  $async.Future<$0.SimpleResponse> changeMode($grpc.ServiceCall call, $0.ChangeModeRequest request);
  $async.Future<$0.ChargeResponse> charge($grpc.ServiceCall call, $0.ChargeRequest request);
  $async.Stream<$0.ChargeResponse> chargeStream($grpc.ServiceCall call, $0.ChargeRequest request);
}
