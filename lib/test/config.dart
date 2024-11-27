import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:iwm_app/proto/config.pb.dart';
import 'dart:math';

// Lista dei tipi di sensori disponibili
List<String> sensorTypes = ['pir', 'camera', 'temperature', 'door', 'co2'];

// Funzione per creare un IwmDevice
IwmDevice createDevice(Int64 id, String name, String type) {
  return IwmDevice()
    ..id = id
    ..name = name
    ..type = type
    ..status = Random().nextBool() // Stato random ON/OFF
    ..layerMesh = Random().nextInt(10)
    ..hwVer = '1.0'
    ..swVer = '1.0.1';
}

// Funzione per creare un IwmSensor casuale e non ripetuto
IwmSensor createSensor(int index) {
  // Seleziona un tipo di sensore casuale senza ripetizione
  String sensorType = sensorTypes[index];
  return IwmSensor()
    ..type = sensorType
    ..timingMax = Random().nextInt(98) + 2
    ..timingDim = Random().nextInt(98) + 2
    ..lightMax = Random().nextInt(50) + 50
    ..lightDim = Random().nextInt(40) + 10;
}

// Funzione per creare un IwmMaster con uno o più sensori
IwmMaster createMaster(Int64 id) {
  var device = createDevice(
      id, '${Random().nextInt(3)}Master${id - 280375465082880}', 'proxy');
  var master = IwmMaster()..device = device;
  var random = Random();
  var numSensors = random.nextInt(5) + 1; // Numero casuale di sensori tra 1 e 3
  for (var i = 0; i < numSensors; i++) {
    master.sensor.add(createSensor(i));
  }
  return master;
}

// Funzione per creare un IwmLamp
IwmLamp createLamp(Int64 id, List<Int64> masterIds) {
  var device = createDevice(
      id, '${Random().nextInt(10)}Lamp${id - 186916976721920}', 'lamp');
  var lamp = IwmLamp()..device = device;
  var random = Random();
  // Aggiungi n_master random alla lampada
  for (var i = 0; i < random.nextInt(masterIds.length) + 1; i++) {
    lamp.master.add(masterIds[random.nextInt(masterIds.length)]);
  }
  return lamp;
}

// Funzione per creare un IwmMesh
IwmMesh createIwmMesh(int masterCount, int lampCount) {
  var mesh = IwmMesh();
  var masterIds = <Int64>[];

  for (var i = 0; i < masterCount; i++) {
    var id = Int64(i + 1 + 280375465082880);
    mesh.master.add(createMaster(id));
    masterIds.add(id);
  }

  for (var i = 0; i < lampCount; i++) {
    var id = Int64(i + 1 + 186916976721920);
    mesh.lamp.add(createLamp(id, masterIds));
  }

  return mesh;
}

class PrintMesh extends StatelessWidget {
  const PrintMesh({
    super.key,
    required this.mesh,
  });

  final IwmMesh mesh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIGICANDO Wifi Mesh'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ...mesh.master.map((master) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Master ID: ${master.device.id}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Name: ${master.device.name}'),
                    Text('Type: ${master.device.type}'),
                    Text('Status: ${master.device.status ? 'ON' : 'OFF'}'),
                    const SizedBox(height: 20),
                  ],
                )),
            ...mesh.lamp.map((lamp) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lamp ID: ${lamp.device.id}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Name: ${lamp.device.name}'),
                    Text('Type: ${lamp.device.type}'),
                    Text('Status: ${lamp.device.status ? 'ON' : 'OFF'}'),
                    Text('Connected Masters: ${lamp.master.join(', ')}'),
                    const SizedBox(height: 20),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

var mesh = createIwmMesh(5, 30); // Crea il mesh con 5 master e 30 lampade
var routerCredentials =
    IwmNetworkCredentials(ssid: "SSID_az", password: "Pass_az");
var soapCredentials =
    IwmNetworkCredentials(ssid: "SSID_soap", password: "Pass_soap");
var meshCredentials =
    IwmNetworkCredentials(ssid: "SSID_mesh", password: "Pass_mesh");
var serverCredentials =
    IwmServerCredentials(ip: "prova", user: "kerr", password: "kerr");

IwmMesh getMesh() {
  return createIwmMesh(Random().nextInt(10) + 5, Random().nextInt(100) + 20);
}

IwmNetworkCredentials iwmGetRouterCredentials() {
  return routerCredentials;
}

IwmNetworkCredentials iwmGetSoapCredentials() {
  return soapCredentials;
}

IwmNetworkCredentials iwmGetMeshCredentials() {
  return meshCredentials;
}

IwmServerCredentials iwmGetServerCredentials() {
  return serverCredentials;
}
