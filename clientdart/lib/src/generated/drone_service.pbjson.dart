//
//  Generated code. Do not modify.
//  source: drone_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use modeDescriptor instead')
const Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'AUTO', '2': 1},
    {'1': 'MANUAL', '2': 2},
    {'1': 'CHARGING', '2': 3},
  ],
};

/// Descriptor for `Mode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List modeDescriptor = $convert.base64Decode(
    'CgRNb2RlEgsKB1VOS05PV04QABIICgRBVVRPEAESCgoGTUFOVUFMEAISDAoIQ0hBUkdJTkcQAw'
    '==');

@$core.Deprecated('Use statusRequestDescriptor instead')
const StatusRequest$json = {
  '1': 'StatusRequest',
  '2': [
    {'1': 'drone_id', '3': 1, '4': 1, '5': 5, '10': 'droneId'},
  ],
};

/// Descriptor for `StatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRequestDescriptor = $convert.base64Decode(
    'Cg1TdGF0dXNSZXF1ZXN0EhkKCGRyb25lX2lkGAEgASgFUgdkcm9uZUlk');

@$core.Deprecated('Use statusResponseDescriptor instead')
const StatusResponse$json = {
  '1': 'StatusResponse',
  '2': [
    {'1': 'mode', '3': 1, '4': 1, '5': 14, '6': '.drone.Mode', '10': 'mode'},
    {'1': 'battery_level', '3': 2, '4': 1, '5': 2, '10': 'batteryLevel'},
  ],
};

/// Descriptor for `StatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusResponseDescriptor = $convert.base64Decode(
    'Cg5TdGF0dXNSZXNwb25zZRIfCgRtb2RlGAEgASgOMgsuZHJvbmUuTW9kZVIEbW9kZRIjCg1iYX'
    'R0ZXJ5X2xldmVsGAIgASgCUgxiYXR0ZXJ5TGV2ZWw=');

@$core.Deprecated('Use changeModeRequestDescriptor instead')
const ChangeModeRequest$json = {
  '1': 'ChangeModeRequest',
  '2': [
    {'1': 'drone_id', '3': 1, '4': 1, '5': 9, '10': 'droneId'},
    {'1': 'new_mode', '3': 2, '4': 1, '5': 14, '6': '.drone.Mode', '10': 'newMode'},
  ],
};

/// Descriptor for `ChangeModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeModeRequestDescriptor = $convert.base64Decode(
    'ChFDaGFuZ2VNb2RlUmVxdWVzdBIZCghkcm9uZV9pZBgBIAEoCVIHZHJvbmVJZBImCghuZXdfbW'
    '9kZRgCIAEoDjILLmRyb25lLk1vZGVSB25ld01vZGU=');

@$core.Deprecated('Use chargeRequestDescriptor instead')
const ChargeRequest$json = {
  '1': 'ChargeRequest',
  '2': [
    {'1': 'drone_id', '3': 1, '4': 1, '5': 9, '10': 'droneId'},
    {'1': 'target_battery_level', '3': 2, '4': 1, '5': 2, '10': 'targetBatteryLevel'},
  ],
};

/// Descriptor for `ChargeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargeRequestDescriptor = $convert.base64Decode(
    'Cg1DaGFyZ2VSZXF1ZXN0EhkKCGRyb25lX2lkGAEgASgJUgdkcm9uZUlkEjAKFHRhcmdldF9iYX'
    'R0ZXJ5X2xldmVsGAIgASgCUhJ0YXJnZXRCYXR0ZXJ5TGV2ZWw=');

@$core.Deprecated('Use simpleResponseDescriptor instead')
const SimpleResponse$json = {
  '1': 'SimpleResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SimpleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List simpleResponseDescriptor = $convert.base64Decode(
    'Cg5TaW1wbGVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAi'
    'ABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use chargeResponseDescriptor instead')
const ChargeResponse$json = {
  '1': 'ChargeResponse',
  '2': [
    {'1': 'battery_level', '3': 1, '4': 1, '5': 2, '10': 'batteryLevel'},
    {'1': 'charging_complete', '3': 2, '4': 1, '5': 8, '10': 'chargingComplete'},
  ],
};

/// Descriptor for `ChargeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargeResponseDescriptor = $convert.base64Decode(
    'Cg5DaGFyZ2VSZXNwb25zZRIjCg1iYXR0ZXJ5X2xldmVsGAEgASgCUgxiYXR0ZXJ5TGV2ZWwSKw'
    'oRY2hhcmdpbmdfY29tcGxldGUYAiABKAhSEGNoYXJnaW5nQ29tcGxldGU=');

