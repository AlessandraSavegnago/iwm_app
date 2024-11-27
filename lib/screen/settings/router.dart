import 'package:flutter/material.dart';
import 'package:iwm_app/proto/config.pb.dart';
import 'package:iwm_app/utils/connection.dart';
import 'package:iwm_app/utils/message.dart';

class RouterConfigurationPage extends StatefulWidget {
  final DeviceConnection deviceConnection;
    final bool isEditable;

  const RouterConfigurationPage({super.key, required this.deviceConnection, required this.isEditable});

  @override
  State<RouterConfigurationPage> createState() =>
      _RouterConfigurationPageState();
}

class _RouterConfigurationPageState extends State<RouterConfigurationPage> {
  late TextEditingController _ssid;
  late TextEditingController _passwordRouter;
  late TextEditingController _ipServer;
  late TextEditingController _user;
  late TextEditingController _passwordServer;

  var routerCredentials = IwmNetworkCredentials();
  var serverCredentials = IwmServerCredentials();

  @override
  void initState() {
    super.initState();
    TcpMessageSender.getRouterCredentials(widget.deviceConnection);
    TcpMessageSender.getServerCredentials(widget.deviceConnection);
    widget.deviceConnection.responseStream.listen(
      (message) {
        IwmProtoMessage msg = message;
        _handleMessage(msg);
      },
      cancelOnError: true,
    );

    _ssid = TextEditingController(text: routerCredentials.ssid);
    _passwordRouter = TextEditingController(text: routerCredentials.password);

    _ipServer = TextEditingController(text: serverCredentials.ip);
    _user = TextEditingController(text: serverCredentials.user);
    _passwordServer = TextEditingController(text: serverCredentials.password);
  }

  void _handleMessage(IwmProtoMessage message) {
    if (message.type == IwmProtoMessageType.ROUTER_GET_CREDENTIALS) {
      setState(() {
        routerCredentials = message.credentials;
      });
    }
    else if (message.type == IwmProtoMessageType.SERVER_GET_CREDENTIALS) {
      setState(() {
        serverCredentials = message.serverCredentials;
      });
    }
  }


  @override
  void dispose() {
    _ssid.dispose();
    _passwordRouter.dispose();
    _ipServer.dispose();
    _user.dispose();
    _passwordServer.dispose();

    super.dispose();
  }

  bool saveValues() {
    if (_ssid.text.isNotEmpty && _passwordRouter.text.isNotEmpty) {
      String? errorMessage;

      if (_ssid.text.length < 5 || _ssid.text.length > 12) {
        errorMessage = "L'SSID deve avere tra i 5 e i 12 caratteri";
      } else if (_passwordRouter.text.length < 5 || _passwordRouter.text.length > 12) {
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
        // Puoi procedere con il salvataggio della configurazione del router
        routerCredentials.ssid = _ssid.text;
        routerCredentials.password = _passwordRouter.text;
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
        title: const Text('Configurazione router aziendale'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _routerEnable = !_routerEnable;
                  });
                },
                child: Text(
                    _routerEnable ? 'Disabilita Modifica' : 'Abilita Modifica'),
              ),
              if (_routerEnable) ...[
                _buildAttributeRow('SSID', _ssid),
                _buildAttributeRow('Password', _passwordRouter),
                const SizedBox(height: 30.0),
                ElevatedButton(
                onPressed: () {
                  setState(() {
                    _serverEnable = !_serverEnable;
                  });
                },
                child: Text(
                    _serverEnable ? 'Disabilita Modifica' : 'Abilita Modifica'),
              ),
              if (_serverEnable) ...[
                _buildAttributeRow('Ip server', _ipServer),
                _buildAttributeRow('User', _user),
                _buildAttributeRow('Password', _passwordServer),
                const SizedBox(height: 16.0),
              ],
              ],
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
                  'Valori router salvati',
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
          width: 120.0,
          child: Text(attributeName),
        ),
        SizedBox(
          width: 150.0,
          height: 80,
          child: TextField(
            readOnly: !widget.isEditable,
            controller: controller,
            obscureText: attributeName == 'Password',
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
