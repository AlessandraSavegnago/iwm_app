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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'config.pbenum.dart';

export 'config.pbenum.dart';

class IwmNetworkCredentials extends $pb.GeneratedMessage {
  factory IwmNetworkCredentials({
    $core.String? ssid,
    $core.String? password,
  }) {
    final $result = create();
    if (ssid != null) {
      $result.ssid = ssid;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  IwmNetworkCredentials._() : super();
  factory IwmNetworkCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmNetworkCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmNetworkCredentials', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ssid')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmNetworkCredentials clone() => IwmNetworkCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmNetworkCredentials copyWith(void Function(IwmNetworkCredentials) updates) => super.copyWith((message) => updates(message as IwmNetworkCredentials)) as IwmNetworkCredentials;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmNetworkCredentials create() => IwmNetworkCredentials._();
  IwmNetworkCredentials createEmptyInstance() => create();
  static $pb.PbList<IwmNetworkCredentials> createRepeated() => $pb.PbList<IwmNetworkCredentials>();
  @$core.pragma('dart2js:noInline')
  static IwmNetworkCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmNetworkCredentials>(create);
  static IwmNetworkCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(1)
  set ssid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSsid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class IwmServerCredentials extends $pb.GeneratedMessage {
  factory IwmServerCredentials({
    $core.String? ip,
    $core.String? user,
    $core.String? password,
  }) {
    final $result = create();
    if (ip != null) {
      $result.ip = ip;
    }
    if (user != null) {
      $result.user = user;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  IwmServerCredentials._() : super();
  factory IwmServerCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmServerCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmServerCredentials', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ip')
    ..aOS(2, _omitFieldNames ? '' : 'user')
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmServerCredentials clone() => IwmServerCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmServerCredentials copyWith(void Function(IwmServerCredentials) updates) => super.copyWith((message) => updates(message as IwmServerCredentials)) as IwmServerCredentials;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmServerCredentials create() => IwmServerCredentials._();
  IwmServerCredentials createEmptyInstance() => create();
  static $pb.PbList<IwmServerCredentials> createRepeated() => $pb.PbList<IwmServerCredentials>();
  @$core.pragma('dart2js:noInline')
  static IwmServerCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmServerCredentials>(create);
  static IwmServerCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}

class IwmSensor extends $pb.GeneratedMessage {
  factory IwmSensor({
    $core.String? type,
    $core.int? timingMax,
    $core.int? timingDim,
    $core.int? lightMax,
    $core.int? lightDim,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (timingMax != null) {
      $result.timingMax = timingMax;
    }
    if (timingDim != null) {
      $result.timingDim = timingDim;
    }
    if (lightMax != null) {
      $result.lightMax = lightMax;
    }
    if (lightDim != null) {
      $result.lightDim = lightDim;
    }
    return $result;
  }
  IwmSensor._() : super();
  factory IwmSensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmSensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmSensor', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'timingMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'timingDim', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'lightMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'lightDim', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmSensor clone() => IwmSensor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmSensor copyWith(void Function(IwmSensor) updates) => super.copyWith((message) => updates(message as IwmSensor)) as IwmSensor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmSensor create() => IwmSensor._();
  IwmSensor createEmptyInstance() => create();
  static $pb.PbList<IwmSensor> createRepeated() => $pb.PbList<IwmSensor>();
  @$core.pragma('dart2js:noInline')
  static IwmSensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmSensor>(create);
  static IwmSensor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get timingMax => $_getIZ(1);
  @$pb.TagNumber(2)
  set timingMax($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimingMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimingMax() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get timingDim => $_getIZ(2);
  @$pb.TagNumber(3)
  set timingDim($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimingDim() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimingDim() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get lightMax => $_getIZ(3);
  @$pb.TagNumber(4)
  set lightMax($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLightMax() => $_has(3);
  @$pb.TagNumber(4)
  void clearLightMax() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get lightDim => $_getIZ(4);
  @$pb.TagNumber(5)
  set lightDim($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLightDim() => $_has(4);
  @$pb.TagNumber(5)
  void clearLightDim() => clearField(5);
}

class IwmDevice extends $pb.GeneratedMessage {
  factory IwmDevice({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? type,
    $core.bool? status,
    $core.int? layerMesh,
    $core.String? hwVer,
    $core.String? swVer,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (layerMesh != null) {
      $result.layerMesh = layerMesh;
    }
    if (hwVer != null) {
      $result.hwVer = hwVer;
    }
    if (swVer != null) {
      $result.swVer = swVer;
    }
    return $result;
  }
  IwmDevice._() : super();
  factory IwmDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmDevice', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'type')
    ..aOB(4, _omitFieldNames ? '' : 'status')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'layerMesh', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'hwVer')
    ..aOS(7, _omitFieldNames ? '' : 'swVer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmDevice clone() => IwmDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmDevice copyWith(void Function(IwmDevice) updates) => super.copyWith((message) => updates(message as IwmDevice)) as IwmDevice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmDevice create() => IwmDevice._();
  IwmDevice createEmptyInstance() => create();
  static $pb.PbList<IwmDevice> createRepeated() => $pb.PbList<IwmDevice>();
  @$core.pragma('dart2js:noInline')
  static IwmDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmDevice>(create);
  static IwmDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get status => $_getBF(3);
  @$pb.TagNumber(4)
  set status($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get layerMesh => $_getIZ(4);
  @$pb.TagNumber(5)
  set layerMesh($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLayerMesh() => $_has(4);
  @$pb.TagNumber(5)
  void clearLayerMesh() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get hwVer => $_getSZ(5);
  @$pb.TagNumber(6)
  set hwVer($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHwVer() => $_has(5);
  @$pb.TagNumber(6)
  void clearHwVer() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get swVer => $_getSZ(6);
  @$pb.TagNumber(7)
  set swVer($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSwVer() => $_has(6);
  @$pb.TagNumber(7)
  void clearSwVer() => clearField(7);
}

class IwmMaster extends $pb.GeneratedMessage {
  factory IwmMaster({
    IwmDevice? device,
    $core.Iterable<IwmSensor>? sensor,
  }) {
    final $result = create();
    if (device != null) {
      $result.device = device;
    }
    if (sensor != null) {
      $result.sensor.addAll(sensor);
    }
    return $result;
  }
  IwmMaster._() : super();
  factory IwmMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmMaster', createEmptyInstance: create)
    ..aOM<IwmDevice>(1, _omitFieldNames ? '' : 'device', subBuilder: IwmDevice.create)
    ..pc<IwmSensor>(2, _omitFieldNames ? '' : 'sensor', $pb.PbFieldType.PM, subBuilder: IwmSensor.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmMaster clone() => IwmMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmMaster copyWith(void Function(IwmMaster) updates) => super.copyWith((message) => updates(message as IwmMaster)) as IwmMaster;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmMaster create() => IwmMaster._();
  IwmMaster createEmptyInstance() => create();
  static $pb.PbList<IwmMaster> createRepeated() => $pb.PbList<IwmMaster>();
  @$core.pragma('dart2js:noInline')
  static IwmMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmMaster>(create);
  static IwmMaster? _defaultInstance;

  @$pb.TagNumber(1)
  IwmDevice get device => $_getN(0);
  @$pb.TagNumber(1)
  set device(IwmDevice v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => clearField(1);
  @$pb.TagNumber(1)
  IwmDevice ensureDevice() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<IwmSensor> get sensor => $_getList(1);
}

class IwmLamp extends $pb.GeneratedMessage {
  factory IwmLamp({
    IwmDevice? device,
    $core.Iterable<$fixnum.Int64>? master,
  }) {
    final $result = create();
    if (device != null) {
      $result.device = device;
    }
    if (master != null) {
      $result.master.addAll(master);
    }
    return $result;
  }
  IwmLamp._() : super();
  factory IwmLamp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmLamp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmLamp', createEmptyInstance: create)
    ..aOM<IwmDevice>(1, _omitFieldNames ? '' : 'device', subBuilder: IwmDevice.create)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'master', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmLamp clone() => IwmLamp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmLamp copyWith(void Function(IwmLamp) updates) => super.copyWith((message) => updates(message as IwmLamp)) as IwmLamp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmLamp create() => IwmLamp._();
  IwmLamp createEmptyInstance() => create();
  static $pb.PbList<IwmLamp> createRepeated() => $pb.PbList<IwmLamp>();
  @$core.pragma('dart2js:noInline')
  static IwmLamp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmLamp>(create);
  static IwmLamp? _defaultInstance;

  @$pb.TagNumber(1)
  IwmDevice get device => $_getN(0);
  @$pb.TagNumber(1)
  set device(IwmDevice v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => clearField(1);
  @$pb.TagNumber(1)
  IwmDevice ensureDevice() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get master => $_getList(1);
}

class IwmMesh extends $pb.GeneratedMessage {
  factory IwmMesh({
    $core.Iterable<IwmMaster>? master,
    $core.Iterable<IwmLamp>? lamp,
  }) {
    final $result = create();
    if (master != null) {
      $result.master.addAll(master);
    }
    if (lamp != null) {
      $result.lamp.addAll(lamp);
    }
    return $result;
  }
  IwmMesh._() : super();
  factory IwmMesh.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmMesh.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmMesh', createEmptyInstance: create)
    ..pc<IwmMaster>(1, _omitFieldNames ? '' : 'master', $pb.PbFieldType.PM, subBuilder: IwmMaster.create)
    ..pc<IwmLamp>(2, _omitFieldNames ? '' : 'lamp', $pb.PbFieldType.PM, subBuilder: IwmLamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmMesh clone() => IwmMesh()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmMesh copyWith(void Function(IwmMesh) updates) => super.copyWith((message) => updates(message as IwmMesh)) as IwmMesh;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmMesh create() => IwmMesh._();
  IwmMesh createEmptyInstance() => create();
  static $pb.PbList<IwmMesh> createRepeated() => $pb.PbList<IwmMesh>();
  @$core.pragma('dart2js:noInline')
  static IwmMesh getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmMesh>(create);
  static IwmMesh? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<IwmMaster> get master => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<IwmLamp> get lamp => $_getList(1);
}

class IwmSetField extends $pb.GeneratedMessage {
  factory IwmSetField({
    $fixnum.Int64? id,
    $core.String? value,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  IwmSetField._() : super();
  factory IwmSetField.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmSetField.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmSetField', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmSetField clone() => IwmSetField()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmSetField copyWith(void Function(IwmSetField) updates) => super.copyWith((message) => updates(message as IwmSetField)) as IwmSetField;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmSetField create() => IwmSetField._();
  IwmSetField createEmptyInstance() => create();
  static $pb.PbList<IwmSetField> createRepeated() => $pb.PbList<IwmSetField>();
  @$core.pragma('dart2js:noInline')
  static IwmSetField getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmSetField>(create);
  static IwmSetField? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class IwmSetDevice extends $pb.GeneratedMessage {
  factory IwmSetDevice({
    $fixnum.Int64? id,
    $fixnum.Int64? device,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (device != null) {
      $result.device = device;
    }
    return $result;
  }
  IwmSetDevice._() : super();
  factory IwmSetDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmSetDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmSetDevice', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'device', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmSetDevice clone() => IwmSetDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmSetDevice copyWith(void Function(IwmSetDevice) updates) => super.copyWith((message) => updates(message as IwmSetDevice)) as IwmSetDevice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmSetDevice create() => IwmSetDevice._();
  IwmSetDevice createEmptyInstance() => create();
  static $pb.PbList<IwmSetDevice> createRepeated() => $pb.PbList<IwmSetDevice>();
  @$core.pragma('dart2js:noInline')
  static IwmSetDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmSetDevice>(create);
  static IwmSetDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get device => $_getI64(1);
  @$pb.TagNumber(2)
  set device($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevice() => clearField(2);
}

class IwmSetSensor extends $pb.GeneratedMessage {
  factory IwmSetSensor({
    $fixnum.Int64? id,
    IwmSensor? sensor,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (sensor != null) {
      $result.sensor = sensor;
    }
    return $result;
  }
  IwmSetSensor._() : super();
  factory IwmSetSensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmSetSensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmSetSensor', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<IwmSensor>(2, _omitFieldNames ? '' : 'sensor', subBuilder: IwmSensor.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmSetSensor clone() => IwmSetSensor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmSetSensor copyWith(void Function(IwmSetSensor) updates) => super.copyWith((message) => updates(message as IwmSetSensor)) as IwmSetSensor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmSetSensor create() => IwmSetSensor._();
  IwmSetSensor createEmptyInstance() => create();
  static $pb.PbList<IwmSetSensor> createRepeated() => $pb.PbList<IwmSetSensor>();
  @$core.pragma('dart2js:noInline')
  static IwmSetSensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmSetSensor>(create);
  static IwmSetSensor? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  IwmSensor get sensor => $_getN(1);
  @$pb.TagNumber(2)
  set sensor(IwmSensor v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSensor() => $_has(1);
  @$pb.TagNumber(2)
  void clearSensor() => clearField(2);
  @$pb.TagNumber(2)
  IwmSensor ensureSensor() => $_ensure(1);
}

enum IwmDeviceStatus_SensorOption {
  sensor, 
  notSet
}

class IwmDeviceStatus extends $pb.GeneratedMessage {
  factory IwmDeviceStatus({
    $fixnum.Int64? id,
    $core.int? dim,
    $core.int? errorMsg,
    $core.int? errorDev,
    $fixnum.Int64? sensor,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (dim != null) {
      $result.dim = dim;
    }
    if (errorMsg != null) {
      $result.errorMsg = errorMsg;
    }
    if (errorDev != null) {
      $result.errorDev = errorDev;
    }
    if (sensor != null) {
      $result.sensor = sensor;
    }
    return $result;
  }
  IwmDeviceStatus._() : super();
  factory IwmDeviceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmDeviceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, IwmDeviceStatus_SensorOption> _IwmDeviceStatus_SensorOptionByTag = {
    5 : IwmDeviceStatus_SensorOption.sensor,
    0 : IwmDeviceStatus_SensorOption.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmDeviceStatus', createEmptyInstance: create)
    ..oo(0, [5])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'dim', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'errorMsg', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'errorDev', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'sensor', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmDeviceStatus clone() => IwmDeviceStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmDeviceStatus copyWith(void Function(IwmDeviceStatus) updates) => super.copyWith((message) => updates(message as IwmDeviceStatus)) as IwmDeviceStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmDeviceStatus create() => IwmDeviceStatus._();
  IwmDeviceStatus createEmptyInstance() => create();
  static $pb.PbList<IwmDeviceStatus> createRepeated() => $pb.PbList<IwmDeviceStatus>();
  @$core.pragma('dart2js:noInline')
  static IwmDeviceStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmDeviceStatus>(create);
  static IwmDeviceStatus? _defaultInstance;

  IwmDeviceStatus_SensorOption whichSensorOption() => _IwmDeviceStatus_SensorOptionByTag[$_whichOneof(0)]!;
  void clearSensorOption() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get dim => $_getIZ(1);
  @$pb.TagNumber(2)
  set dim($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDim() => $_has(1);
  @$pb.TagNumber(2)
  void clearDim() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get errorMsg => $_getIZ(2);
  @$pb.TagNumber(3)
  set errorMsg($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMsg() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get errorDev => $_getIZ(3);
  @$pb.TagNumber(4)
  set errorDev($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasErrorDev() => $_has(3);
  @$pb.TagNumber(4)
  void clearErrorDev() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get sensor => $_getI64(4);
  @$pb.TagNumber(5)
  set sensor($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSensor() => $_has(4);
  @$pb.TagNumber(5)
  void clearSensor() => clearField(5);
}

class IwmUpdate extends $pb.GeneratedMessage {
  factory IwmUpdate({
    $core.String? device,
    $core.int? date,
    $core.int? version,
    $core.List<$core.int>? file,
  }) {
    final $result = create();
    if (device != null) {
      $result.device = device;
    }
    if (date != null) {
      $result.date = date;
    }
    if (version != null) {
      $result.version = version;
    }
    if (file != null) {
      $result.file = file;
    }
    return $result;
  }
  IwmUpdate._() : super();
  factory IwmUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmUpdate', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'device')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'date', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'file', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmUpdate clone() => IwmUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmUpdate copyWith(void Function(IwmUpdate) updates) => super.copyWith((message) => updates(message as IwmUpdate)) as IwmUpdate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmUpdate create() => IwmUpdate._();
  IwmUpdate createEmptyInstance() => create();
  static $pb.PbList<IwmUpdate> createRepeated() => $pb.PbList<IwmUpdate>();
  @$core.pragma('dart2js:noInline')
  static IwmUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmUpdate>(create);
  static IwmUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get device => $_getSZ(0);
  @$pb.TagNumber(1)
  set device($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get date => $_getIZ(1);
  @$pb.TagNumber(2)
  set date($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get version => $_getIZ(2);
  @$pb.TagNumber(3)
  set version($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get file => $_getN(3);
  @$pb.TagNumber(4)
  set file($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFile() => $_has(3);
  @$pb.TagNumber(4)
  void clearFile() => clearField(4);
}

class IwmMeshDevice extends $pb.GeneratedMessage {
  factory IwmMeshDevice({
    $fixnum.Int64? id,
    $core.int? type,
    $core.int? meshLayer,
    $core.String? parent,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (meshLayer != null) {
      $result.meshLayer = meshLayer;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    return $result;
  }
  IwmMeshDevice._() : super();
  factory IwmMeshDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmMeshDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmMeshDevice', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'meshLayer', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'parent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmMeshDevice clone() => IwmMeshDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmMeshDevice copyWith(void Function(IwmMeshDevice) updates) => super.copyWith((message) => updates(message as IwmMeshDevice)) as IwmMeshDevice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmMeshDevice create() => IwmMeshDevice._();
  IwmMeshDevice createEmptyInstance() => create();
  static $pb.PbList<IwmMeshDevice> createRepeated() => $pb.PbList<IwmMeshDevice>();
  @$core.pragma('dart2js:noInline')
  static IwmMeshDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmMeshDevice>(create);
  static IwmMeshDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get meshLayer => $_getIZ(2);
  @$pb.TagNumber(3)
  set meshLayer($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMeshLayer() => $_has(2);
  @$pb.TagNumber(3)
  void clearMeshLayer() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get parent => $_getSZ(3);
  @$pb.TagNumber(4)
  set parent($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParent() => $_has(3);
  @$pb.TagNumber(4)
  void clearParent() => clearField(4);
}

enum IwmProtoMessage_Payload {
  mesh, 
  lamp, 
  master, 
  credentials, 
  serverCredentials, 
  association, 
  field_9, 
  dim, 
  status, 
  sensor, 
  notSet
}

class IwmProtoMessage extends $pb.GeneratedMessage {
  factory IwmProtoMessage({
    IwmProtoMessageType? type,
    IwmMesh? mesh,
    IwmLamp? lamp,
    IwmMaster? master,
    IwmNetworkCredentials? credentials,
    IwmServerCredentials? serverCredentials,
    IwmSetDevice? association,
    IwmSetField? field_9,
    $core.int? dim,
    IwmDeviceStatus? status,
    IwmSetSensor? sensor,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (mesh != null) {
      $result.mesh = mesh;
    }
    if (lamp != null) {
      $result.lamp = lamp;
    }
    if (master != null) {
      $result.master = master;
    }
    if (credentials != null) {
      $result.credentials = credentials;
    }
    if (serverCredentials != null) {
      $result.serverCredentials = serverCredentials;
    }
    if (association != null) {
      $result.association = association;
    }
    if (field_9 != null) {
      $result.field_9 = field_9;
    }
    if (dim != null) {
      $result.dim = dim;
    }
    if (status != null) {
      $result.status = status;
    }
    if (sensor != null) {
      $result.sensor = sensor;
    }
    return $result;
  }
  IwmProtoMessage._() : super();
  factory IwmProtoMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IwmProtoMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, IwmProtoMessage_Payload> _IwmProtoMessage_PayloadByTag = {
    2 : IwmProtoMessage_Payload.mesh,
    3 : IwmProtoMessage_Payload.lamp,
    4 : IwmProtoMessage_Payload.master,
    6 : IwmProtoMessage_Payload.credentials,
    7 : IwmProtoMessage_Payload.serverCredentials,
    8 : IwmProtoMessage_Payload.association,
    9 : IwmProtoMessage_Payload.field_9,
    10 : IwmProtoMessage_Payload.dim,
    12 : IwmProtoMessage_Payload.status,
    13 : IwmProtoMessage_Payload.sensor,
    0 : IwmProtoMessage_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IwmProtoMessage', createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 6, 7, 8, 9, 10, 12, 13])
    ..e<IwmProtoMessageType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: IwmProtoMessageType.NO_MESSAGE, valueOf: IwmProtoMessageType.valueOf, enumValues: IwmProtoMessageType.values)
    ..aOM<IwmMesh>(2, _omitFieldNames ? '' : 'mesh', subBuilder: IwmMesh.create)
    ..aOM<IwmLamp>(3, _omitFieldNames ? '' : 'lamp', subBuilder: IwmLamp.create)
    ..aOM<IwmMaster>(4, _omitFieldNames ? '' : 'master', subBuilder: IwmMaster.create)
    ..aOM<IwmNetworkCredentials>(6, _omitFieldNames ? '' : 'credentials', subBuilder: IwmNetworkCredentials.create)
    ..aOM<IwmServerCredentials>(7, _omitFieldNames ? '' : 'serverCredentials', subBuilder: IwmServerCredentials.create)
    ..aOM<IwmSetDevice>(8, _omitFieldNames ? '' : 'association', subBuilder: IwmSetDevice.create)
    ..aOM<IwmSetField>(9, _omitFieldNames ? '' : 'field', subBuilder: IwmSetField.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'dim', $pb.PbFieldType.OU3)
    ..aOM<IwmDeviceStatus>(12, _omitFieldNames ? '' : 'status', subBuilder: IwmDeviceStatus.create)
    ..aOM<IwmSetSensor>(13, _omitFieldNames ? '' : 'sensor', subBuilder: IwmSetSensor.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IwmProtoMessage clone() => IwmProtoMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IwmProtoMessage copyWith(void Function(IwmProtoMessage) updates) => super.copyWith((message) => updates(message as IwmProtoMessage)) as IwmProtoMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IwmProtoMessage create() => IwmProtoMessage._();
  IwmProtoMessage createEmptyInstance() => create();
  static $pb.PbList<IwmProtoMessage> createRepeated() => $pb.PbList<IwmProtoMessage>();
  @$core.pragma('dart2js:noInline')
  static IwmProtoMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IwmProtoMessage>(create);
  static IwmProtoMessage? _defaultInstance;

  IwmProtoMessage_Payload whichPayload() => _IwmProtoMessage_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  IwmProtoMessageType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(IwmProtoMessageType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  IwmMesh get mesh => $_getN(1);
  @$pb.TagNumber(2)
  set mesh(IwmMesh v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMesh() => $_has(1);
  @$pb.TagNumber(2)
  void clearMesh() => clearField(2);
  @$pb.TagNumber(2)
  IwmMesh ensureMesh() => $_ensure(1);

  @$pb.TagNumber(3)
  IwmLamp get lamp => $_getN(2);
  @$pb.TagNumber(3)
  set lamp(IwmLamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearLamp() => clearField(3);
  @$pb.TagNumber(3)
  IwmLamp ensureLamp() => $_ensure(2);

  @$pb.TagNumber(4)
  IwmMaster get master => $_getN(3);
  @$pb.TagNumber(4)
  set master(IwmMaster v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaster() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaster() => clearField(4);
  @$pb.TagNumber(4)
  IwmMaster ensureMaster() => $_ensure(3);

  @$pb.TagNumber(6)
  IwmNetworkCredentials get credentials => $_getN(4);
  @$pb.TagNumber(6)
  set credentials(IwmNetworkCredentials v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCredentials() => $_has(4);
  @$pb.TagNumber(6)
  void clearCredentials() => clearField(6);
  @$pb.TagNumber(6)
  IwmNetworkCredentials ensureCredentials() => $_ensure(4);

  @$pb.TagNumber(7)
  IwmServerCredentials get serverCredentials => $_getN(5);
  @$pb.TagNumber(7)
  set serverCredentials(IwmServerCredentials v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasServerCredentials() => $_has(5);
  @$pb.TagNumber(7)
  void clearServerCredentials() => clearField(7);
  @$pb.TagNumber(7)
  IwmServerCredentials ensureServerCredentials() => $_ensure(5);

  @$pb.TagNumber(8)
  IwmSetDevice get association => $_getN(6);
  @$pb.TagNumber(8)
  set association(IwmSetDevice v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAssociation() => $_has(6);
  @$pb.TagNumber(8)
  void clearAssociation() => clearField(8);
  @$pb.TagNumber(8)
  IwmSetDevice ensureAssociation() => $_ensure(6);

  @$pb.TagNumber(9)
  IwmSetField get field_9 => $_getN(7);
  @$pb.TagNumber(9)
  set field_9(IwmSetField v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasField_9() => $_has(7);
  @$pb.TagNumber(9)
  void clearField_9() => clearField(9);
  @$pb.TagNumber(9)
  IwmSetField ensureField_9() => $_ensure(7);

  @$pb.TagNumber(10)
  $core.int get dim => $_getIZ(8);
  @$pb.TagNumber(10)
  set dim($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasDim() => $_has(8);
  @$pb.TagNumber(10)
  void clearDim() => clearField(10);

  @$pb.TagNumber(12)
  IwmDeviceStatus get status => $_getN(9);
  @$pb.TagNumber(12)
  set status(IwmDeviceStatus v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasStatus() => $_has(9);
  @$pb.TagNumber(12)
  void clearStatus() => clearField(12);
  @$pb.TagNumber(12)
  IwmDeviceStatus ensureStatus() => $_ensure(9);

  @$pb.TagNumber(13)
  IwmSetSensor get sensor => $_getN(10);
  @$pb.TagNumber(13)
  set sensor(IwmSetSensor v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSensor() => $_has(10);
  @$pb.TagNumber(13)
  void clearSensor() => clearField(13);
  @$pb.TagNumber(13)
  IwmSetSensor ensureSensor() => $_ensure(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
