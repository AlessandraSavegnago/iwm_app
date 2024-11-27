//
//  Generated code. Do not modify.
//  source: lib/proto/config.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IwmErrorType extends $pb.ProtobufEnum {
  static const IwmErrorType OK = IwmErrorType._(0, _omitEnumNames ? '' : 'OK');
  static const IwmErrorType TODO = IwmErrorType._(1, _omitEnumNames ? '' : 'TODO');

  static const $core.List<IwmErrorType> values = <IwmErrorType> [
    OK,
    TODO,
  ];

  static final $core.Map<$core.int, IwmErrorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IwmErrorType? valueOf($core.int value) => _byValue[value];

  const IwmErrorType._($core.int v, $core.String n) : super(v, n);
}

class IwmProtoMessageType extends $pb.ProtobufEnum {
  static const IwmProtoMessageType NO_MESSAGE = IwmProtoMessageType._(0, _omitEnumNames ? '' : 'NO_MESSAGE');
  static const IwmProtoMessageType START_CONFIG = IwmProtoMessageType._(1, _omitEnumNames ? '' : 'START_CONFIG');
  static const IwmProtoMessageType STOP_CONFIG = IwmProtoMessageType._(2, _omitEnumNames ? '' : 'STOP_CONFIG');
  static const IwmProtoMessageType LAMP_SET_CONFIG = IwmProtoMessageType._(3, _omitEnumNames ? '' : 'LAMP_SET_CONFIG');
  static const IwmProtoMessageType LAMP_GET_CONFIG = IwmProtoMessageType._(4, _omitEnumNames ? '' : 'LAMP_GET_CONFIG');
  static const IwmProtoMessageType MASTER_SET_CONFIG = IwmProtoMessageType._(5, _omitEnumNames ? '' : 'MASTER_SET_CONFIG');
  static const IwmProtoMessageType MASTER_GET_CONFIG = IwmProtoMessageType._(6, _omitEnumNames ? '' : 'MASTER_GET_CONFIG');
  static const IwmProtoMessageType MESH_SET_CONFIG = IwmProtoMessageType._(9, _omitEnumNames ? '' : 'MESH_SET_CONFIG');
  static const IwmProtoMessageType MESH_GET_CONFIG = IwmProtoMessageType._(10, _omitEnumNames ? '' : 'MESH_GET_CONFIG');
  static const IwmProtoMessageType WIFI_SET_CREDENTIALS = IwmProtoMessageType._(11, _omitEnumNames ? '' : 'WIFI_SET_CREDENTIALS');
  static const IwmProtoMessageType WIFI_GET_CREDENTIALS = IwmProtoMessageType._(12, _omitEnumNames ? '' : 'WIFI_GET_CREDENTIALS');
  static const IwmProtoMessageType MESH_SET_CREDENTIALS = IwmProtoMessageType._(13, _omitEnumNames ? '' : 'MESH_SET_CREDENTIALS');
  static const IwmProtoMessageType MESH_GET_CREDENTIALS = IwmProtoMessageType._(14, _omitEnumNames ? '' : 'MESH_GET_CREDENTIALS');
  static const IwmProtoMessageType SET_NAME = IwmProtoMessageType._(15, _omitEnumNames ? '' : 'SET_NAME');
  static const IwmProtoMessageType SET_STATE = IwmProtoMessageType._(16, _omitEnumNames ? '' : 'SET_STATE');
  static const IwmProtoMessageType SET_ASSOCIATION = IwmProtoMessageType._(17, _omitEnumNames ? '' : 'SET_ASSOCIATION');
  static const IwmProtoMessageType REMOVE_ASSOCIATION = IwmProtoMessageType._(18, _omitEnumNames ? '' : 'REMOVE_ASSOCIATION');
  static const IwmProtoMessageType SET_DIM = IwmProtoMessageType._(19, _omitEnumNames ? '' : 'SET_DIM');
  static const IwmProtoMessageType GET_DEVICE_STATUS = IwmProtoMessageType._(20, _omitEnumNames ? '' : 'GET_DEVICE_STATUS');
  static const IwmProtoMessageType SEND_DEVICE_STATUS = IwmProtoMessageType._(21, _omitEnumNames ? '' : 'SEND_DEVICE_STATUS');
  static const IwmProtoMessageType UPDATE = IwmProtoMessageType._(22, _omitEnumNames ? '' : 'UPDATE');
  static const IwmProtoMessageType ROUTER_SET_CREDENTIALS = IwmProtoMessageType._(23, _omitEnumNames ? '' : 'ROUTER_SET_CREDENTIALS');
  static const IwmProtoMessageType ROUTER_GET_CREDENTIALS = IwmProtoMessageType._(24, _omitEnumNames ? '' : 'ROUTER_GET_CREDENTIALS');
  static const IwmProtoMessageType SERVER_SET_CREDENTIALS = IwmProtoMessageType._(25, _omitEnumNames ? '' : 'SERVER_SET_CREDENTIALS');
  static const IwmProtoMessageType SERVER_GET_CREDENTIALS = IwmProtoMessageType._(26, _omitEnumNames ? '' : 'SERVER_GET_CREDENTIALS');
  static const IwmProtoMessageType SENSOR_SET_CONFIG = IwmProtoMessageType._(27, _omitEnumNames ? '' : 'SENSOR_SET_CONFIG');
  static const IwmProtoMessageType LAMP_SEND_CONFIG = IwmProtoMessageType._(28, _omitEnumNames ? '' : 'LAMP_SEND_CONFIG');
  static const IwmProtoMessageType MASTER_SEND_CONFIG = IwmProtoMessageType._(29, _omitEnumNames ? '' : 'MASTER_SEND_CONFIG');

  static const $core.List<IwmProtoMessageType> values = <IwmProtoMessageType> [
    NO_MESSAGE,
    START_CONFIG,
    STOP_CONFIG,
    LAMP_SET_CONFIG,
    LAMP_GET_CONFIG,
    MASTER_SET_CONFIG,
    MASTER_GET_CONFIG,
    MESH_SET_CONFIG,
    MESH_GET_CONFIG,
    WIFI_SET_CREDENTIALS,
    WIFI_GET_CREDENTIALS,
    MESH_SET_CREDENTIALS,
    MESH_GET_CREDENTIALS,
    SET_NAME,
    SET_STATE,
    SET_ASSOCIATION,
    REMOVE_ASSOCIATION,
    SET_DIM,
    GET_DEVICE_STATUS,
    SEND_DEVICE_STATUS,
    UPDATE,
    ROUTER_SET_CREDENTIALS,
    ROUTER_GET_CREDENTIALS,
    SERVER_SET_CREDENTIALS,
    SERVER_GET_CREDENTIALS,
    SENSOR_SET_CONFIG,
    LAMP_SEND_CONFIG,
    MASTER_SEND_CONFIG,
  ];

  static final $core.Map<$core.int, IwmProtoMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IwmProtoMessageType? valueOf($core.int value) => _byValue[value];

  const IwmProtoMessageType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
