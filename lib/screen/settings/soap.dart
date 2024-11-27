import 'package:flutter/material.dart';
import 'package:iwm_app/proto/config.pb.dart';
import 'package:iwm_app/test/config.dart';
import 'package:iwm_app/utils/connection.dart';
import 'package:iwm_app/utils/message.dart';
import 'package:iwm_app/utils/utils.dart';

class SoapConfigurationPage extends StatefulWidget {
final DeviceConnection deviceConnection;
  final bool isEditable;

  const SoapConfigurationPage({super.key, required this.deviceConnection, required this.isEditable});

  @override
  State<SoapConfigurationPage> createState() => _SoapConfigurationPageState();
}

class _SoapConfigurationPageState extends State<SoapConfigurationPage> {
  late TextEditingController _ssid;
  late TextEditingController _password;

  var soapCredentials = IwmNetworkCredentials();

    @override
  void initState() {
    super.initState();
    TcpMessageSender.getSoapCredentials(widget.deviceConnection);
    widget.deviceConnection.responseStream.listen(
      (message) {
        IwmProtoMessage msg = message;
        _handleMessage(msg);
        // }
      },
      cancelOnError: true,
    );
    _ssid = TextEditingController(text: soapCredentials.ssid);
    _password = TextEditingController(text: soapCredentials.password);
   }

   void _handleMessage(IwmProtoMessage message) {
    if (message.type == IwmProtoMessageType.WIFI_GET_CREDENTIALS) {
      setState(() {
        soapCredentials = message.credentials;
      });
    }
  } 

  @override
  void dispose() {
    _ssid.dispose();
    _password.dispose();
    super.dispose();
  }

   bool saveValues() {
    if (_ssid.text.isNotEmpty &&
        _password.text.isNotEmpty) {

          String? errorMessage;

        if(_ssid.text.length < 5 || _ssid.text.length > 12){
          errorMessage = "L'SSID deve avere tra i 5 e i 12 caratteri";
        }
        else if (_password.text.length < 5 || _password.text.length > 12){
          errorMessage = "La password deve avere tra i 5 e i 12 caratteri";
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
        soapCredentials.ssid = _ssid.text;
        soapCredentials.password = _password.text;

        return true;
        // Fai qualcosa con il nuovo sensore...
      }
        // Fai qualcosa con il nuovo sensore...
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
        title: const Text('Configurazione della saponetta'),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAttributeRow('SSID', _ssid),
            _buildAttributeRow('Password', _password),          
          ],
        ),
      ),
      ),
      floatingActionButton: widget.isEditable ? TextButton(
        onPressed: () {
          if (saveValues()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(seconds: 1),
                backgroundColor: Colors.cyan,
                content: Text(
                  'Valori soapCredentials salvati',
                  style: TextStyle(color: Colors.black),
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
          width: 150.0,
          height: 80,
          child: TextField(
            readOnly: !widget.isEditable,
            controller: controller,
            keyboardType: (attributeName == "SSID" ? TextInputType.text : TextInputType.visiblePassword),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

