import 'dart:async'; // Importa questa libreria
import 'package:flutter/material.dart';
import '../utils/connection.dart';
import 'package:iwm_app/screen/configuration.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DeviceConnection _deviceConnection = DeviceConnection();
  StreamSubscription<String>? _statusSubscription;
  bool _isLoading = false; // Stato per controllare il caricamento

  @override
  void initState() {
    super.initState();
    _deviceConnection = DeviceConnection();
    _statusSubscription = _deviceConnection.statusStream.listen((status) {
      if (status == 'Discovery started') {
        setState(() {
          _isLoading = true;
        });
      } else if (status == 'Device added') {
        setState(
            () {}); // Aggiorna l'interfaccia utente quando viene aggiunto un dispositivo
      } else if (status == 'Discovery complete') {
        setState(() {
          _isLoading = false;
        });
      }
    });
    _discoverDevices();
  }

  Future<void> _discoverDevices() async {
    await _deviceConnection.discoverDevices();
  }

  Future<void> _navigateToConfiguration() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            HomeConfiguration(deviceConnection: _deviceConnection),
      ),
    );

    // Reinitialize HomePage after returning from HomeConfiguration
    _discoverDevices();
  }

  @override
  void dispose() {
    _statusSubscription?.cancel();
    _deviceConnection.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Digicando Wifi Mesh',
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              const SizedBox(height: 20),
              // if (_isLoading)
              //   Center(child: CircularProgressIndicator()) // Mostra il caricamento se `_isLoading` è true
              // else
              if (!_isLoading && _deviceConnection.devices.isEmpty)
                const Center(
                    child: Text(
                        "No devices found")) // Mostra un messaggio se non ci sono dispositivi
              else
                Expanded(
                  child: ListView.builder(
                    itemCount: _deviceConnection.devices.length,
                    itemBuilder: (context, index) {
                      final parts = _deviceConnection.devices[index].split(':');
                      final name = parts[0];
                      final ip = parts[1];
                      final port = int.parse(parts[2]);
                      return SizedBox(
                        child: ListTile(
                          title: Text(
                            name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(ip),
                          trailing: ElevatedButton(
                            onPressed: () {
                              _deviceConnection.connectToServer(ip, port, () {
                                _navigateToConfiguration();
                              });
                            },
                            child: const Text('Connect'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
          if (_isLoading)
            Container(
              color: Colors.black38,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ), // Mostra il caricamento se `_isLoading` è true
        ],
      ),
      floatingActionButton: _isLoading
          ? null
          : TextButton(
              onPressed: () => _discoverDevices(),
              child: const Text("Search"),
            ),
    );
  }
}
