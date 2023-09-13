//
//  Generated code. Do not modify.
//  source: drone_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'drone_service.pbenum.dart';

export 'drone_service.pbenum.dart';

class StatusRequest extends $pb.GeneratedMessage {
  factory StatusRequest({
    $core.int? droneId,
  }) {
    final $result = create();
    if (droneId != null) {
      $result.droneId = droneId;
    }
    return $result;
  }
  StatusRequest._() : super();
  factory StatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'drone'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'droneId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusRequest clone() => StatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusRequest copyWith(void Function(StatusRequest) updates) => super.copyWith((message) => updates(message as StatusRequest)) as StatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusRequest create() => StatusRequest._();
  StatusRequest createEmptyInstance() => create();
  static $pb.PbList<StatusRequest> createRepeated() => $pb.PbList<StatusRequest>();
  @$core.pragma('dart2js:noInline')
  static StatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusRequest>(create);
  static StatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get droneId => $_getIZ(0);
  @$pb.TagNumber(1)
  set droneId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDroneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDroneId() => clearField(1);
}

class StatusResponse extends $pb.GeneratedMessage {
  factory StatusResponse({
    Mode? mode,
    $core.double? batteryLevel,
  }) {
    final $result = create();
    if (mode != null) {
      $result.mode = mode;
    }
    if (batteryLevel != null) {
      $result.batteryLevel = batteryLevel;
    }
    return $result;
  }
  StatusResponse._() : super();
  factory StatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'drone'), createEmptyInstance: create)
    ..e<Mode>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Mode.UNKNOWN, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'batteryLevel', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusResponse clone() => StatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusResponse copyWith(void Function(StatusResponse) updates) => super.copyWith((message) => updates(message as StatusResponse)) as StatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusResponse create() => StatusResponse._();
  StatusResponse createEmptyInstance() => create();
  static $pb.PbList<StatusResponse> createRepeated() => $pb.PbList<StatusResponse>();
  @$core.pragma('dart2js:noInline')
  static StatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusResponse>(create);
  static StatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Mode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(Mode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get batteryLevel => $_getN(1);
  @$pb.TagNumber(2)
  set batteryLevel($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBatteryLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearBatteryLevel() => clearField(2);
}

class ChangeModeRequest extends $pb.GeneratedMessage {
  factory ChangeModeRequest({
    $core.String? droneId,
    Mode? newMode,
  }) {
    final $result = create();
    if (droneId != null) {
      $result.droneId = droneId;
    }
    if (newMode != null) {
      $result.newMode = newMode;
    }
    return $result;
  }
  ChangeModeRequest._() : super();
  factory ChangeModeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeModeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChangeModeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'drone'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'droneId')
    ..e<Mode>(2, _omitFieldNames ? '' : 'newMode', $pb.PbFieldType.OE, defaultOrMaker: Mode.UNKNOWN, valueOf: Mode.valueOf, enumValues: Mode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeModeRequest clone() => ChangeModeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeModeRequest copyWith(void Function(ChangeModeRequest) updates) => super.copyWith((message) => updates(message as ChangeModeRequest)) as ChangeModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeModeRequest create() => ChangeModeRequest._();
  ChangeModeRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeModeRequest> createRepeated() => $pb.PbList<ChangeModeRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeModeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeModeRequest>(create);
  static ChangeModeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get droneId => $_getSZ(0);
  @$pb.TagNumber(1)
  set droneId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDroneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDroneId() => clearField(1);

  @$pb.TagNumber(2)
  Mode get newMode => $_getN(1);
  @$pb.TagNumber(2)
  set newMode(Mode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewMode() => clearField(2);
}

class ChargeRequest extends $pb.GeneratedMessage {
  factory ChargeRequest({
    $core.String? droneId,
    $core.double? targetBatteryLevel,
  }) {
    final $result = create();
    if (droneId != null) {
      $result.droneId = droneId;
    }
    if (targetBatteryLevel != null) {
      $result.targetBatteryLevel = targetBatteryLevel;
    }
    return $result;
  }
  ChargeRequest._() : super();
  factory ChargeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChargeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChargeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'drone'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'droneId')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'targetBatteryLevel', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChargeRequest clone() => ChargeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChargeRequest copyWith(void Function(ChargeRequest) updates) => super.copyWith((message) => updates(message as ChargeRequest)) as ChargeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChargeRequest create() => ChargeRequest._();
  ChargeRequest createEmptyInstance() => create();
  static $pb.PbList<ChargeRequest> createRepeated() => $pb.PbList<ChargeRequest>();
  @$core.pragma('dart2js:noInline')
  static ChargeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChargeRequest>(create);
  static ChargeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get droneId => $_getSZ(0);
  @$pb.TagNumber(1)
  set droneId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDroneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDroneId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get targetBatteryLevel => $_getN(1);
  @$pb.TagNumber(2)
  set targetBatteryLevel($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetBatteryLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetBatteryLevel() => clearField(2);
}

class SimpleResponse extends $pb.GeneratedMessage {
  factory SimpleResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  SimpleResponse._() : super();
  factory SimpleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SimpleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SimpleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'drone'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SimpleResponse clone() => SimpleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SimpleResponse copyWith(void Function(SimpleResponse) updates) => super.copyWith((message) => updates(message as SimpleResponse)) as SimpleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimpleResponse create() => SimpleResponse._();
  SimpleResponse createEmptyInstance() => create();
  static $pb.PbList<SimpleResponse> createRepeated() => $pb.PbList<SimpleResponse>();
  @$core.pragma('dart2js:noInline')
  static SimpleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SimpleResponse>(create);
  static SimpleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class ChargeResponse extends $pb.GeneratedMessage {
  factory ChargeResponse({
    $core.double? batteryLevel,
    $core.bool? chargingComplete,
  }) {
    final $result = create();
    if (batteryLevel != null) {
      $result.batteryLevel = batteryLevel;
    }
    if (chargingComplete != null) {
      $result.chargingComplete = chargingComplete;
    }
    return $result;
  }
  ChargeResponse._() : super();
  factory ChargeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChargeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChargeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'drone'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'batteryLevel', $pb.PbFieldType.OF)
    ..aOB(2, _omitFieldNames ? '' : 'chargingComplete')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChargeResponse clone() => ChargeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChargeResponse copyWith(void Function(ChargeResponse) updates) => super.copyWith((message) => updates(message as ChargeResponse)) as ChargeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChargeResponse create() => ChargeResponse._();
  ChargeResponse createEmptyInstance() => create();
  static $pb.PbList<ChargeResponse> createRepeated() => $pb.PbList<ChargeResponse>();
  @$core.pragma('dart2js:noInline')
  static ChargeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChargeResponse>(create);
  static ChargeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get batteryLevel => $_getN(0);
  @$pb.TagNumber(1)
  set batteryLevel($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBatteryLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearBatteryLevel() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get chargingComplete => $_getBF(1);
  @$pb.TagNumber(2)
  set chargingComplete($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChargingComplete() => $_has(1);
  @$pb.TagNumber(2)
  void clearChargingComplete() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
