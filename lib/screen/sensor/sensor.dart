import 'package:fixnum/fixnum.dart';

import 'package:flutter/material.dart';
import 'package:iwm_app/proto/config.pb.dart';
import 'package:iwm_app/utils/message.dart';

import '../../utils/connection.dart';

class SensorConfigurationPage extends StatefulWidget {
  final DeviceConnection deviceConnection;
  final IwmSensor sensor;
  final Int64 idMaster;
  final bool isEditable;

  const SensorConfigurationPage({super.key, required this.deviceConnection, required this.sensor, required this.idMaster, required this.isEditable});

  @override
  State<SensorConfigurationPage> createState() =>
      _SensorConfigurationPageState();
}

class _SensorConfigurationPageState extends State<SensorConfigurationPage> {
  late TextEditingController _timingMaxController;
  late TextEditingController _timingDimController;
  late TextEditingController _lightMaxController;
  late TextEditingController _lightDimController;

  @override
  void initState() {
    super.initState();
    _timingMaxController =
        TextEditingController(text: widget.sensor.timingMax.toString());
    _timingDimController =
        TextEditingController(text: widget.sensor.timingDim.toString());
    _lightMaxController =
        TextEditingController(text: widget.sensor.lightMax.toString());
    _lightDimController =
        TextEditingController(text: widget.sensor.lightDim.toString());
  }

  @override
  void dispose() {
    _timingMaxController.dispose();
    _timingDimController.dispose();
    _lightMaxController.dispose();
    _lightDimController.dispose();
    super.dispose();
  }

  bool saveValues() {
    if (_timingMaxController.text.isNotEmpty &&
        _timingDimController.text.isNotEmpty &&
        _lightMaxController.text.isNotEmpty &&
        _lightDimController.text.isNotEmpty) {
      int timingMax = int.parse(_timingMaxController.text);
      int timingDim = int.parse(_timingDimController.text);
      int lightMax = int.parse(_lightMaxController.text);
      int lightDim = int.parse(_lightDimController.text);

      String? errorMessage;

      // Controlla se i valori dei campi sono validi
      if (timingMax < 2 || timingMax > 1000) {
        errorMessage =
            'Il valore di Timing Max deve essere compreso tra 2 e 1000';
      } else if (timingDim < 2 || timingDim > 1000) {
        errorMessage =
            'Il valore di Timing Dim deve essere compreso tra 2 e 1000';
      } else if (lightMax < 10 || lightMax > 100) {
        errorMessage =
            'Il valore di Light Max deve essere compreso tra 10 e 100';
      } else if (lightDim < 10 || lightDim > 100) {
        errorMessage =
            'Il valore di Light Dim deve essere compreso tra 10 e 100';
      } else if (lightDim >= lightMax) {
        errorMessage = 'Il valore di Light Dim deve essere minore di Light Max';
      }

      if (errorMessage != null) {
        // Mostra un messaggio di errore se uno dei valori non è valido
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Errore'),
              content: Text(errorMessage!),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
        return false;
      } else {
        // Puoi procedere con il salvataggio della configurazione del sensore
          widget.sensor.timingMax = timingMax;
          widget.sensor.timingDim = timingDim;
          widget.sensor.lightMax = lightMax;
          widget.sensor.lightDim = lightDim;

          IwmSetSensor setSensor = IwmSetSensor(id: widget.idMaster, sensor: widget.sensor);

        TcpMessageSender.setSensorConfig(widget.deviceConnection, setSensor);
        return true;
      }
    } else {
      // Mostra un messaggio di errore se uno dei campi è vuoto
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Attenzione'),
            content: const Text('Tutti i campi devono essere compilati.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.sensor.type),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAttributeRow(
                  'Timing Max \n(minutes)', _timingMaxController),
              _buildAttributeRow(
                  'Timing Dim \n(minutes)', _timingDimController),
              _buildAttributeRow('Light Max \n(%)', _lightMaxController),
              _buildAttributeRow('Light Dim \n(%)', _lightDimController),
            ],
          ),
        ),
      ),
      floatingActionButton: widget.isEditable ? TextButton(
        onPressed: () {
          if (saveValues()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 1),
                backgroundColor: Colors.cyan,
                content: Text(
                  'Valori   ${widget.sensor.type}   salvati',
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            );
          }
        },
        child: const Text("Save"),
      ) : null,
    );
  }

  Widget _buildAttributeRow(
      String attributeName, TextEditingController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 100.0,
          child: Text(attributeName),
        ),
        SizedBox(
          width: 80.0,
          height: 80,
          child: TextField(
            readOnly: !widget.isEditable,
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
