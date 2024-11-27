import 'dart:async';
import 'dart:io';
import 'package:iwm_app/utils/utils.dart';
import 'package:multicast_dns/multicast_dns.dart';
import 'package:iwm_app/proto/config.pb.dart';

class DeviceConnection {
  final List<String> devices = [];
  final Set<String> _deviceSet = {}; // Set per tenere traccia dei dispositivi univoci
  Socket? socket;
  final StreamController<String> _statusController = StreamController<String>();
  final StreamController<IwmProtoMessage> _responseController = StreamController<IwmProtoMessage>.broadcast();

  Stream<String> get statusStream => _statusController.stream;
  Stream<IwmProtoMessage> get responseStream => _responseController.stream;

  Future<void> discoverDevices() async {
    _statusController.add('Discovery started'); // Aggiungi questo
    devices.clear(); // Svuota la lista dei dispositivi
    _deviceSet.clear(); // Svuota il set dei dispositivi univoci

    final MDnsClient client = MDnsClient();
    await client.start();
    const String serviceType = '_http._tcp';

    await for (final PtrResourceRecord ptr in client.lookup<PtrResourceRecord>(
      ResourceRecordQuery.serverPointer(serviceType),
    )) {
      await for (final SrvResourceRecord srv in client.lookup<SrvResourceRecord>(
        ResourceRecordQuery.service(ptr.domainName),
      )) {
        final ipAddresses = await client.lookup<IPAddressResourceRecord>(
          ResourceRecordQuery.addressIPv4(srv.target),
        ).toList();

        for (final ipAddress in ipAddresses) {
          final address = (ipAddress.address.toString().split('\''))[1];
          final name = ptr.domainName
              .replaceAll(serviceType, '')
              .replaceAll("..local", '')
              .replaceAll(" Web Server", '');

          final device = '$name:$address:${srv.port}';

          if (!_deviceSet.contains(device)) {
            _deviceSet.add(device);
            devices.add(device);
            _statusController.add('Device added'); // Aggiungi questo per indicare l'aggiunta di un dispositivo
          }
        }
      }
    }
    client.stop();
    _statusController.add('Discovery complete'); // Aggiungi questo
  }

  Future<void> connectToServer(String address, int port, Function onSuccess) async {
    try {
      socket = await Socket.connect(address, port);
      _statusController.add('Connected to $address:$port');
      socket!.listen(
        (data) {
          _responseController.add(IwmProtoMessage.fromBuffer(data));
        },
        onError: (error) {
          myPrint("Socket error: $error");
          _statusController.add("Socket error: $error");
          disconnectFromServer();
        },
        onDone: () {
          _statusController.add("Socket connection closed");
          disconnectFromServer();
        },
      );
      onSuccess(); // Call the onSuccess callback
    } catch (e) {
      _statusController.add("Unable to connect: $e");
    }
  }

  void disconnectFromServer() {
    socket?.destroy();
    socket = null;
    _statusController.add('Disconnected');
  }

  void sendMessage(List<int> message) {
    if (socket != null) {
      socket!.add(message);
      _statusController.add('Message sent: $message');
    } else {
      _statusController.add('No connection established');
    }
  }

  void disposeResponse() {
    _responseController.close();
  }

  void disposeStatus() {
    _statusController.close();
  }

  void dispose(){
    disposeStatus();
  }
}
