//
//  Generated code. Do not modify.
//  source: lib/proto/config.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use iwmErrorTypeDescriptor instead')
const IwmErrorType$json = {
  '1': 'IwmErrorType',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'TODO', '2': 1},
  ],
};

/// Descriptor for `IwmErrorType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List iwmErrorTypeDescriptor = $convert.base64Decode(
    'CgxJd21FcnJvclR5cGUSBgoCT0sQABIICgRUT0RPEAE=');

@$core.Deprecated('Use iwmProtoMessageTypeDescriptor instead')
const IwmProtoMessageType$json = {
  '1': 'IwmProtoMessageType',
  '2': [
    {'1': 'NO_MESSAGE', '2': 0},
    {'1': 'START_CONFIG', '2': 1},
    {'1': 'STOP_CONFIG', '2': 2},
    {'1': 'LAMP_SET_CONFIG', '2': 3},
    {'1': 'LAMP_GET_CONFIG', '2': 4},
    {'1': 'MASTER_SET_CONFIG', '2': 5},
    {'1': 'MASTER_GET_CONFIG', '2': 6},
    {'1': 'MESH_SET_CONFIG', '2': 9},
    {'1': 'MESH_GET_CONFIG', '2': 10},
    {'1': 'WIFI_SET_CREDENTIALS', '2': 11},
    {'1': 'WIFI_GET_CREDENTIALS', '2': 12},
    {'1': 'MESH_SET_CREDENTIALS', '2': 13},
    {'1': 'MESH_GET_CREDENTIALS', '2': 14},
    {'1': 'SET_NAME', '2': 15},
    {'1': 'SET_STATE', '2': 16},
    {'1': 'SET_ASSOCIATION', '2': 17},
    {'1': 'REMOVE_ASSOCIATION', '2': 18},
    {'1': 'SET_DIM', '2': 19},
    {'1': 'GET_DEVICE_STATUS', '2': 20},
    {'1': 'SEND_DEVICE_STATUS', '2': 21},
    {'1': 'UPDATE', '2': 22},
    {'1': 'ROUTER_SET_CREDENTIALS', '2': 23},
    {'1': 'ROUTER_GET_CREDENTIALS', '2': 24},
    {'1': 'SERVER_SET_CREDENTIALS', '2': 25},
    {'1': 'SERVER_GET_CREDENTIALS', '2': 26},
    {'1': 'SENSOR_SET_CONFIG', '2': 27},
    {'1': 'LAMP_SEND_CONFIG', '2': 28},
    {'1': 'MASTER_SEND_CONFIG', '2': 29},
  ],
};

/// Descriptor for `IwmProtoMessageType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List iwmProtoMessageTypeDescriptor = $convert.base64Decode(
    'ChNJd21Qcm90b01lc3NhZ2VUeXBlEg4KCk5PX01FU1NBR0UQABIQCgxTVEFSVF9DT05GSUcQAR'
    'IPCgtTVE9QX0NPTkZJRxACEhMKD0xBTVBfU0VUX0NPTkZJRxADEhMKD0xBTVBfR0VUX0NPTkZJ'
    'RxAEEhUKEU1BU1RFUl9TRVRfQ09ORklHEAUSFQoRTUFTVEVSX0dFVF9DT05GSUcQBhITCg9NRV'
    'NIX1NFVF9DT05GSUcQCRITCg9NRVNIX0dFVF9DT05GSUcQChIYChRXSUZJX1NFVF9DUkVERU5U'
    'SUFMUxALEhgKFFdJRklfR0VUX0NSRURFTlRJQUxTEAwSGAoUTUVTSF9TRVRfQ1JFREVOVElBTF'
    'MQDRIYChRNRVNIX0dFVF9DUkVERU5USUFMUxAOEgwKCFNFVF9OQU1FEA8SDQoJU0VUX1NUQVRF'
    'EBASEwoPU0VUX0FTU09DSUFUSU9OEBESFgoSUkVNT1ZFX0FTU09DSUFUSU9OEBISCwoHU0VUX0'
    'RJTRATEhUKEUdFVF9ERVZJQ0VfU1RBVFVTEBQSFgoSU0VORF9ERVZJQ0VfU1RBVFVTEBUSCgoG'
    'VVBEQVRFEBYSGgoWUk9VVEVSX1NFVF9DUkVERU5USUFMUxAXEhoKFlJPVVRFUl9HRVRfQ1JFRE'
    'VOVElBTFMQGBIaChZTRVJWRVJfU0VUX0NSRURFTlRJQUxTEBkSGgoWU0VSVkVSX0dFVF9DUkVE'
    'RU5USUFMUxAaEhUKEVNFTlNPUl9TRVRfQ09ORklHEBsSFAoQTEFNUF9TRU5EX0NPTkZJRxAcEh'
    'YKEk1BU1RFUl9TRU5EX0NPTkZJRxAd');

@$core.Deprecated('Use iwmNetworkCredentialsDescriptor instead')
const IwmNetworkCredentials$json = {
  '1': 'IwmNetworkCredentials',
  '2': [
    {'1': 'ssid', '3': 1, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `IwmNetworkCredentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmNetworkCredentialsDescriptor = $convert.base64Decode(
    'ChVJd21OZXR3b3JrQ3JlZGVudGlhbHMSEgoEc3NpZBgBIAEoCVIEc3NpZBIaCghwYXNzd29yZB'
    'gCIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use iwmServerCredentialsDescriptor instead')
const IwmServerCredentials$json = {
  '1': 'IwmServerCredentials',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `IwmServerCredentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmServerCredentialsDescriptor = $convert.base64Decode(
    'ChRJd21TZXJ2ZXJDcmVkZW50aWFscxIOCgJpcBgBIAEoCVICaXASEgoEdXNlchgCIAEoCVIEdX'
    'NlchIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use iwmSensorDescriptor instead')
const IwmSensor$json = {
  '1': 'IwmSensor',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'timing_max', '3': 2, '4': 1, '5': 13, '10': 'timingMax'},
    {'1': 'timing_dim', '3': 3, '4': 1, '5': 13, '10': 'timingDim'},
    {'1': 'light_max', '3': 4, '4': 1, '5': 13, '10': 'lightMax'},
    {'1': 'light_dim', '3': 5, '4': 1, '5': 13, '10': 'lightDim'},
  ],
};

/// Descriptor for `IwmSensor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmSensorDescriptor = $convert.base64Decode(
    'CglJd21TZW5zb3ISEgoEdHlwZRgBIAEoCVIEdHlwZRIdCgp0aW1pbmdfbWF4GAIgASgNUgl0aW'
    '1pbmdNYXgSHQoKdGltaW5nX2RpbRgDIAEoDVIJdGltaW5nRGltEhsKCWxpZ2h0X21heBgEIAEo'
    'DVIIbGlnaHRNYXgSGwoJbGlnaHRfZGltGAUgASgNUghsaWdodERpbQ==');

@$core.Deprecated('Use iwmDeviceDescriptor instead')
const IwmDevice$json = {
  '1': 'IwmDevice',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 4, '4': 1, '5': 8, '10': 'status'},
    {'1': 'layer_mesh', '3': 5, '4': 1, '5': 13, '10': 'layerMesh'},
    {'1': 'hw_ver', '3': 6, '4': 1, '5': 9, '10': 'hwVer'},
    {'1': 'sw_ver', '3': 7, '4': 1, '5': 9, '10': 'swVer'},
  ],
};

/// Descriptor for `IwmDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmDeviceDescriptor = $convert.base64Decode(
    'CglJd21EZXZpY2USDgoCaWQYASABKARSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEdHlwZR'
    'gDIAEoCVIEdHlwZRIWCgZzdGF0dXMYBCABKAhSBnN0YXR1cxIdCgpsYXllcl9tZXNoGAUgASgN'
    'UglsYXllck1lc2gSFQoGaHdfdmVyGAYgASgJUgVod1ZlchIVCgZzd192ZXIYByABKAlSBXN3Vm'
    'Vy');

@$core.Deprecated('Use iwmMasterDescriptor instead')
const IwmMaster$json = {
  '1': 'IwmMaster',
  '2': [
    {'1': 'device', '3': 1, '4': 1, '5': 11, '6': '.IwmDevice', '10': 'device'},
    {'1': 'sensor', '3': 2, '4': 3, '5': 11, '6': '.IwmSensor', '10': 'sensor'},
  ],
};

/// Descriptor for `IwmMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmMasterDescriptor = $convert.base64Decode(
    'CglJd21NYXN0ZXISIgoGZGV2aWNlGAEgASgLMgouSXdtRGV2aWNlUgZkZXZpY2USIgoGc2Vuc2'
    '9yGAIgAygLMgouSXdtU2Vuc29yUgZzZW5zb3I=');

@$core.Deprecated('Use iwmLampDescriptor instead')
const IwmLamp$json = {
  '1': 'IwmLamp',
  '2': [
    {'1': 'device', '3': 1, '4': 1, '5': 11, '6': '.IwmDevice', '10': 'device'},
    {'1': 'master', '3': 2, '4': 3, '5': 4, '10': 'master'},
  ],
};

/// Descriptor for `IwmLamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmLampDescriptor = $convert.base64Decode(
    'CgdJd21MYW1wEiIKBmRldmljZRgBIAEoCzIKLkl3bURldmljZVIGZGV2aWNlEhYKBm1hc3Rlch'
    'gCIAMoBFIGbWFzdGVy');

@$core.Deprecated('Use iwmMeshDescriptor instead')
const IwmMesh$json = {
  '1': 'IwmMesh',
  '2': [
    {'1': 'master', '3': 1, '4': 3, '5': 11, '6': '.IwmMaster', '10': 'master'},
    {'1': 'lamp', '3': 2, '4': 3, '5': 11, '6': '.IwmLamp', '10': 'lamp'},
  ],
};

/// Descriptor for `IwmMesh`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmMeshDescriptor = $convert.base64Decode(
    'CgdJd21NZXNoEiIKBm1hc3RlchgBIAMoCzIKLkl3bU1hc3RlclIGbWFzdGVyEhwKBGxhbXAYAi'
    'ADKAsyCC5Jd21MYW1wUgRsYW1w');

@$core.Deprecated('Use iwmSetFieldDescriptor instead')
const IwmSetField$json = {
  '1': 'IwmSetField',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `IwmSetField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmSetFieldDescriptor = $convert.base64Decode(
    'CgtJd21TZXRGaWVsZBIOCgJpZBgBIAEoBFICaWQSFAoFdmFsdWUYAiABKAlSBXZhbHVl');

@$core.Deprecated('Use iwmSetDeviceDescriptor instead')
const IwmSetDevice$json = {
  '1': 'IwmSetDevice',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'device', '3': 2, '4': 1, '5': 4, '10': 'device'},
  ],
};

/// Descriptor for `IwmSetDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmSetDeviceDescriptor = $convert.base64Decode(
    'CgxJd21TZXREZXZpY2USDgoCaWQYASABKARSAmlkEhYKBmRldmljZRgCIAEoBFIGZGV2aWNl');

@$core.Deprecated('Use iwmSetSensorDescriptor instead')
const IwmSetSensor$json = {
  '1': 'IwmSetSensor',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'sensor', '3': 2, '4': 1, '5': 11, '6': '.IwmSensor', '10': 'sensor'},
  ],
};

/// Descriptor for `IwmSetSensor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmSetSensorDescriptor = $convert.base64Decode(
    'CgxJd21TZXRTZW5zb3ISDgoCaWQYASABKARSAmlkEiIKBnNlbnNvchgCIAEoCzIKLkl3bVNlbn'
    'NvclIGc2Vuc29y');

@$core.Deprecated('Use iwmDeviceStatusDescriptor instead')
const IwmDeviceStatus$json = {
  '1': 'IwmDeviceStatus',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'dim', '3': 2, '4': 1, '5': 13, '10': 'dim'},
    {'1': 'error_msg', '3': 3, '4': 1, '5': 13, '10': 'errorMsg'},
    {'1': 'error_dev', '3': 4, '4': 1, '5': 13, '10': 'errorDev'},
    {'1': 'sensor', '3': 5, '4': 1, '5': 4, '9': 0, '10': 'sensor'},
  ],
  '8': [
    {'1': 'sensor_option'},
  ],
};

/// Descriptor for `IwmDeviceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmDeviceStatusDescriptor = $convert.base64Decode(
    'Cg9Jd21EZXZpY2VTdGF0dXMSDgoCaWQYASABKARSAmlkEhAKA2RpbRgCIAEoDVIDZGltEhsKCW'
    'Vycm9yX21zZxgDIAEoDVIIZXJyb3JNc2cSGwoJZXJyb3JfZGV2GAQgASgNUghlcnJvckRldhIY'
    'CgZzZW5zb3IYBSABKARIAFIGc2Vuc29yQg8KDXNlbnNvcl9vcHRpb24=');

@$core.Deprecated('Use iwmUpdateDescriptor instead')
const IwmUpdate$json = {
  '1': 'IwmUpdate',
  '2': [
    {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
    {'1': 'date', '3': 2, '4': 1, '5': 13, '10': 'date'},
    {'1': 'version', '3': 3, '4': 1, '5': 13, '10': 'version'},
    {'1': 'file', '3': 4, '4': 1, '5': 12, '10': 'file'},
  ],
};

/// Descriptor for `IwmUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmUpdateDescriptor = $convert.base64Decode(
    'CglJd21VcGRhdGUSFgoGZGV2aWNlGAEgASgJUgZkZXZpY2USEgoEZGF0ZRgCIAEoDVIEZGF0ZR'
    'IYCgd2ZXJzaW9uGAMgASgNUgd2ZXJzaW9uEhIKBGZpbGUYBCABKAxSBGZpbGU=');

@$core.Deprecated('Use iwmMeshDeviceDescriptor instead')
const IwmMeshDevice$json = {
  '1': 'IwmMeshDevice',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 13, '10': 'type'},
    {'1': 'mesh_layer', '3': 3, '4': 1, '5': 13, '10': 'meshLayer'},
    {'1': 'parent', '3': 4, '4': 1, '5': 9, '10': 'parent'},
  ],
};

/// Descriptor for `IwmMeshDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmMeshDeviceDescriptor = $convert.base64Decode(
    'Cg1Jd21NZXNoRGV2aWNlEg4KAmlkGAEgASgEUgJpZBISCgR0eXBlGAIgASgNUgR0eXBlEh0KCm'
    '1lc2hfbGF5ZXIYAyABKA1SCW1lc2hMYXllchIWCgZwYXJlbnQYBCABKAlSBnBhcmVudA==');

@$core.Deprecated('Use iwmProtoMessageDescriptor instead')
const IwmProtoMessage$json = {
  '1': 'IwmProtoMessage',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.IwmProtoMessageType', '10': 'type'},
    {'1': 'mesh', '3': 2, '4': 1, '5': 11, '6': '.IwmMesh', '9': 0, '10': 'mesh'},
    {'1': 'lamp', '3': 3, '4': 1, '5': 11, '6': '.IwmLamp', '9': 0, '10': 'lamp'},
    {'1': 'master', '3': 4, '4': 1, '5': 11, '6': '.IwmMaster', '9': 0, '10': 'master'},
    {'1': 'credentials', '3': 6, '4': 1, '5': 11, '6': '.IwmNetworkCredentials', '9': 0, '10': 'credentials'},
    {'1': 'server_credentials', '3': 7, '4': 1, '5': 11, '6': '.IwmServerCredentials', '9': 0, '10': 'serverCredentials'},
    {'1': 'association', '3': 8, '4': 1, '5': 11, '6': '.IwmSetDevice', '9': 0, '10': 'association'},
    {'1': 'field', '3': 9, '4': 1, '5': 11, '6': '.IwmSetField', '9': 0, '10': 'field'},
    {'1': 'dim', '3': 10, '4': 1, '5': 13, '9': 0, '10': 'dim'},
    {'1': 'status', '3': 12, '4': 1, '5': 11, '6': '.IwmDeviceStatus', '9': 0, '10': 'status'},
    {'1': 'sensor', '3': 13, '4': 1, '5': 11, '6': '.IwmSetSensor', '9': 0, '10': 'sensor'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `IwmProtoMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iwmProtoMessageDescriptor = $convert.base64Decode(
    'Cg9Jd21Qcm90b01lc3NhZ2USKAoEdHlwZRgBIAEoDjIULkl3bVByb3RvTWVzc2FnZVR5cGVSBH'
    'R5cGUSHgoEbWVzaBgCIAEoCzIILkl3bU1lc2hIAFIEbWVzaBIeCgRsYW1wGAMgASgLMgguSXdt'
    'TGFtcEgAUgRsYW1wEiQKBm1hc3RlchgEIAEoCzIKLkl3bU1hc3RlckgAUgZtYXN0ZXISOgoLY3'
    'JlZGVudGlhbHMYBiABKAsyFi5Jd21OZXR3b3JrQ3JlZGVudGlhbHNIAFILY3JlZGVudGlhbHMS'
    'RgoSc2VydmVyX2NyZWRlbnRpYWxzGAcgASgLMhUuSXdtU2VydmVyQ3JlZGVudGlhbHNIAFIRc2'
    'VydmVyQ3JlZGVudGlhbHMSMQoLYXNzb2NpYXRpb24YCCABKAsyDS5Jd21TZXREZXZpY2VIAFIL'
    'YXNzb2NpYXRpb24SJAoFZmllbGQYCSABKAsyDC5Jd21TZXRGaWVsZEgAUgVmaWVsZBISCgNkaW'
    '0YCiABKA1IAFIDZGltEioKBnN0YXR1cxgMIAEoCzIQLkl3bURldmljZVN0YXR1c0gAUgZzdGF0'
    'dXMSJwoGc2Vuc29yGA0gASgLMg0uSXdtU2V0U2Vuc29ySABSBnNlbnNvckIJCgdwYXlsb2Fk');

