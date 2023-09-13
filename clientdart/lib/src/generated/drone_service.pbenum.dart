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

class Mode extends $pb.ProtobufEnum {
  static const Mode UNKNOWN = Mode._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Mode AUTO = Mode._(1, _omitEnumNames ? '' : 'AUTO');
  static const Mode MANUAL = Mode._(2, _omitEnumNames ? '' : 'MANUAL');
  static const Mode CHARGING = Mode._(3, _omitEnumNames ? '' : 'CHARGING');

  static const $core.List<Mode> values = <Mode> [
    UNKNOWN,
    AUTO,
    MANUAL,
    CHARGING,
  ];

  static final $core.Map<$core.int, Mode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Mode? valueOf($core.int value) => _byValue[value];

  const Mode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
