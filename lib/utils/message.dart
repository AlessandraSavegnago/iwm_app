import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:iwm_app/screen/configuration.dart';
import 'package:iwm_app/test/config.dart';
import 'package:iwm_app/utils/utils.dart';
import '../proto/config.pb.dart';
import 'connection.dart';

class TcpMessageSender {
  static void sendStartConfig(DeviceConnection conn) {
    myPrint("MESSAGE: START_CONFIG");
    final message = IwmProtoMessage()..type = IwmProtoMessageType.START_CONFIG;
    conn.sendMessage(message.writeToBuffer());
  }

  static void sendStopConfig(DeviceConnection conn) {
    myPrint("MESSAGE: STOP_CONFIG");
    final message = IwmProtoMessage()..type = IwmProtoMessageType.STOP_CONFIG;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setLampConfig(DeviceConnection conn, IwmLamp lamp) {
    myPrint("MESSAGE: LAMP_SET_CONFIG");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.LAMP_SET_CONFIG
      ..lamp = lamp;
    conn.sendMessage(message.writeToBuffer());
  }

  static void getLampConfig(DeviceConnection conn) async {
    myPrint("MESSAGE: LAMP_GET_CONFIG");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.LAMP_GET_CONFIG;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setMasterConfig(DeviceConnection conn, IwmMaster master) {
    myPrint("MESSAGE: MASTER_SET_CONFIG");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.MASTER_SET_CONFIG
      ..master = master;
    conn.sendMessage(message.writeToBuffer());
  }

  static void getMasterConfig(DeviceConnection conn) async {
    myPrint("MESSAGE: MASTER_GET_CONFIG");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.MASTER_GET_CONFIG;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setMeshConfig(DeviceConnection conn, IwmMesh mesh) {
    myPrint("MESSAGE: MESH_SET_CONFIG");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.MESH_SET_CONFIG
      ..mesh = mesh;
    conn.sendMessage(message.writeToBuffer());
  }

  static void getMeshConfig(DeviceConnection conn) async {
    myPrint("MESSAGE: MESH_GET_CONFIG");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.MESH_GET_CONFIG;
    conn.sendMessage(message.writeToBuffer());
  }

  static setSoapCredentials(
      DeviceConnection conn, IwmNetworkCredentials credentials) {
    myPrint("MESSAGE: WIFI_SET_CREDENTIALS");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.WIFI_SET_CREDENTIALS
      ..credentials = credentials;
    conn.sendMessage(message.writeToBuffer());
  }

  static void getSoapCredentials(DeviceConnection conn) async {
    myPrint("MESSAGE: WIFI_GET_CREDENTIALS");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.WIFI_GET_CREDENTIALS;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setMeshCredentials(
      DeviceConnection conn, IwmNetworkCredentials credentials) {
    myPrint("MESSAGE: MESH_SET_CREDENTIALS");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.MESH_SET_CREDENTIALS
      ..credentials = credentials;
    conn.sendMessage(message.writeToBuffer());
  }

  static void getMeshCredentials(DeviceConnection conn) async {
    myPrint("MESSAGE: MESH_GET_CREDENTIALS");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.MESH_GET_CREDENTIALS;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setName(DeviceConnection conn, IwmDevice device) {
    myPrint("MESSAGE: SET_NAME");
    IwmSetField dim = IwmSetField(id: device.id, value: device.name);
    IwmProtoMessage message = IwmProtoMessage()
      ..type = IwmProtoMessageType.SET_NAME
      ..field_9 = dim;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setStatus(DeviceConnection conn, IwmDevice device) {
    myPrint("MESSAGE: SET_STATE");
    IwmSetField dim =
        IwmSetField(id: device.id, value: (device.status ? "ON" : "OFF"));
    IwmProtoMessage message = IwmProtoMessage()
      ..type = IwmProtoMessageType.SET_STATE
      ..field_9 = dim;
    conn.sendMessage(message.writeToBuffer());
  }

  static void addMaster(DeviceConnection conn, Int64 lamp, Int64 master) {
    myPrint("MESSAGE: SET_ASSOCIATION");
    IwmSetDevice assoc = IwmSetDevice(id: lamp, device: master);
    IwmProtoMessage message = IwmProtoMessage()
      ..type = IwmProtoMessageType.SET_ASSOCIATION
      ..association = assoc;
    conn.sendMessage(message.writeToBuffer());
  }

  static void removeMaster(DeviceConnection conn, Int64 lamp, Int64 master) {
    myPrint("MESSAGE: REMOVE_ASSOCIATION");
    IwmSetDevice assoc = IwmSetDevice(id: lamp, device: master);
    IwmProtoMessage message = IwmProtoMessage()
      ..type = IwmProtoMessageType.REMOVE_ASSOCIATION
      ..association = assoc;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setRouterCredentials(
      DeviceConnection conn, IwmNetworkCredentials credentials) {
    myPrint("MESSAGE: ROUTER_SET_CREDENTIALS");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.ROUTER_SET_CREDENTIALS
      ..credentials = credentials;
    conn.sendMessage(message.writeToBuffer());
  }

  static void getRouterCredentials(DeviceConnection conn) async {
    myPrint("MESSAGE: ROUTER_GET_CREDENTIALS");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.ROUTER_GET_CREDENTIALS;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setServerCredentials(
      DeviceConnection conn, IwmServerCredentials credentials) {
    myPrint("MESSAGE: SERVER_SET_CREDENTIALS");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.SERVER_SET_CREDENTIALS
      ..serverCredentials = credentials;
    conn.sendMessage(message.writeToBuffer());
  }

  static void getServerCredentials(DeviceConnection conn) async {
    myPrint("MESSAGE: SERVER_GET_CREDENTIALS");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.SERVER_GET_CREDENTIALS;
    conn.sendMessage(message.writeToBuffer());
  }

  static void setSensorConfig(DeviceConnection conn, IwmSetSensor sensor) {
    myPrint("MESSAGE: SENSOR_SET_CONFIG");
    final message = IwmProtoMessage()
      ..type = IwmProtoMessageType.SENSOR_SET_CONFIG
      ..sensor = sensor;
    conn.sendMessage(message.writeToBuffer());
  }
}
