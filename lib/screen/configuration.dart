import 'dart:async';
import 'package:flutter/material.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';
import 'package:iwm_app/proto/config.pb.dart';
import 'package:collection/collection.dart';

import '../utils/message.dart';
import '../utils/connection.dart';

import 'sensor/sensor_list.dart';
import 'settings.dart';

class HomeConfiguration extends StatefulWidget {
  final DeviceConnection deviceConnection;

  const HomeConfiguration({
    super.key,
    required this.deviceConnection,
  });

  @override
  State<HomeConfiguration> createState() => _HomeConfigurationState();
}

class _HomeConfigurationState extends State<HomeConfiguration> {
  int? selectedRow;
  int? selectedColumn;
  bool _isEditable = false;
  bool _isLoading = false;
  StreamSubscription<IwmProtoMessage>? _subscription;

  final _width = 120.0;
  final _height = 120.0;

  var mesh = IwmMesh();

  @override
  void initState() {
    super.initState();
    _isLoading = false; // Imposta l'indicatore di caricamento all'inizio
    TcpMessageSender.getMeshConfig(widget.deviceConnection);
    _subscription = widget.deviceConnection.responseStream.listen(
      (message) {
        _handleMessage(message);
      },
      cancelOnError: true,
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    widget.deviceConnection.disconnectFromServer();
    super.dispose();
  }

  void _handleMessage(IwmProtoMessage message) {
    switch (message.type) {
      case IwmProtoMessageType.MESH_GET_CONFIG:
        setState(() {
          _isLoading = true;
          mesh = IwmMesh();
        });
        break;
      case IwmProtoMessageType.MASTER_SEND_CONFIG:
        setState(() {
          mesh.master.add(message.master);
          _isLoading = false;
        });
        break;
      case IwmProtoMessageType.LAMP_SEND_CONFIG:
        setState(() {
          mesh.lamp.add(message.lamp);
        });
        break;
      case IwmProtoMessageType.STOP_CONFIG:
        setState(() {
          _isLoading = false; // Interrompi l'indicatore di caricamento
        });
        break;
      default:
        break;
    }
  }

  void sortMesh() {
    mesh.lamp
        .sort((a, b) => compareAsciiUpperCase(a.device.name, b.device.name));
    mesh.master
        .sort((a, b) => compareAsciiUpperCase(a.device.name, b.device.name));
  }

  void clearState() {
    setState(() {
      sortMesh();
      selectedRow = null;
      selectedColumn = null;
    });
  }

  Future<void> showEditDialog(BuildContext context, IwmDevice device,
      ValueChanged<String> onSubmit) async {
    TextEditingController controller = TextEditingController(text: device.name);
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Info'),
          content: SizedBox(
            height: 150,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(labelText: 'Name'),
                    readOnly: !_isEditable,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text("Hardware version: ${device.hwVer}"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text("Software version: ${device.swVer}"),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            if (_isEditable)
              TextButton(
                child: const Text('Save'),
                onPressed: () {
                  if (controller.text.length >= 3 &&
                      controller.text.length <= 12) {
                    onSubmit(controller.text);
                    TcpMessageSender.setName(widget.deviceConnection, device);
                    Navigator.of(context).pop();
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Attenzione'),
                          content: const Text(
                              'Il nome deve essere deve contenere tra i 3 e i 12 caratteri.'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
          ],
        );
      },
    );
  }

  IconButton setIconBulb(IwmDevice device) {
    return IconButton(
      icon: Icon(
        const IconData(
          0xe37b,
          fontFamily: 'MaterialIcons',
        ),
        color: device.status ? Colors.yellow : Colors.grey,
      ),
      onPressed: _isEditable
          ? () {
              setState(() {
                device.status = !device.status;
              });
              TcpMessageSender.setStatus(widget.deviceConnection, device);
            }
          : null,
    );
  }

  Widget deviceName(IwmDevice device) {
    return SizedBox(
        width: _width,
        height: _height / 2,
        child: TextButton(
          onPressed: () {
            showEditDialog(context, device, (newName) {
              setState(() {
                device.name = newName;
              });
            });
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
              side: const BorderSide(color: Colors.grey, width: 1),
            ),
          ),
          child: Text(
            device.name,
          ),
        ));
  }

  Widget buildColumnTitle(int i) {
    IwmMaster master = mesh.master[i];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: const Icon(Icons.settings, size: 20, color: Colors.grey),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SensorListPage(
                        master: master,
                        deviceConnection: widget.deviceConnection,
                        isEditable: _isEditable,
                      ),
                    ),
                  );
                }),
            if (_isEditable) setIconBulb(master.device),
          ],
        ),
        deviceName(master.device),
      ],
    );
  }

  Widget buildRowTitle(int i) {
    return Column(
      children: [
        if (_isEditable) ...[
          setIconBulb(mesh.lamp[i].device),
        ] else ...[
          const SizedBox(height: 30.0),
        ],
        deviceName(mesh.lamp[i].device),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    sortMesh();
    final titleColumn =
        mesh.master.map((master) => master.device.name).toList();
    final titleRow = mesh.lamp.map((lamp) => lamp.device.name).toList();

    List<double> columnWidths = List.filled(titleColumn.length, _width);
    List<double> rowHeights = List.filled(titleRow.length, _height);

    final data = List.generate(mesh.lamp.length, (i) {
      return List.generate(mesh.master.length, (j) {
        bool isConnected =
            mesh.lamp[i].master.contains(mesh.master[j].device.id);
        return isConnected;
      });
    });

    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Digicando Wifi Mesh',
          ),
          actions: [
            if (!_isLoading)
              PopupMenuButton<String>(
                icon: const Icon(Icons.menu),
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem<String>(
                    value: 'config',
                    child: Text('Richiedi configurazione'),
                  ),
                  const PopupMenuItem<String>(
                      value: 'settings',
                      child: Text('Impostazioni'),
                    ),
                  if (_isEditable) ...[
                    const PopupMenuItem<String>(
                      value: 'send_config',
                      child: Text('Invia configurazione al server'),
                    ),
                  ]
                ],
                onSelected: (String value) async {
                  switch (value) {
                    case 'config':
                      _isEditable ? TcpMessageSender.sendStartConfig(widget.deviceConnection) :
                      TcpMessageSender.getMeshConfig(widget.deviceConnection);
                      break;
                    case 'settings':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(
                            deviceConnection: widget.deviceConnection,
                            isEditable: _isEditable,
                          ),
                        ),
                      );
                      break;
                    case 'send_config':
                      TcpMessageSender.sendStopConfig(widget.deviceConnection);
                      setState(() {
                        _isEditable = false;
                      });
                      break;
                  }
                },
              ),
          ],
          //backgroundColor: Colors.cyan,
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: StickyHeadersTable(
                    cellDimensions:
                        CellDimensions.variableColumnWidthAndRowHeight(
                      columnWidths: columnWidths,
                      rowHeights: rowHeights,
                      stickyLegendWidth: 120,
                      stickyLegendHeight: 120,
                    ),
                    cellAlignments:
                        const CellAlignments.uniform(Alignment.center),
                    columnsLength: mesh.master.length,
                    rowsLength: mesh.lamp.length,
                    columnsTitleBuilder: buildColumnTitle,
                    rowsTitleBuilder: buildRowTitle,
                    contentCellBuilder: (j, i) {
                      return SizedBox(
                        height: _height / 1.5,
                        width: _width / 1.5,
                        child: ElevatedButton(
                          child: null,
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              side: const BorderSide(
                                  color: Colors.grey, width: 0),
                            ),
                            backgroundColor: (data[i][j] ? Colors.cyan : null),
                          ),
                          onPressed: _isEditable
                              ? () {
                                  setState(() {
                                    selectedColumn = j;
                                    selectedRow = i;
                                    final lamp = mesh.lamp[i];
                                    final master = mesh.master[j];
                                    if (lamp.master
                                        .contains(master.device.id)) {
                                      lamp.master.remove(master.device.id);
                                      TcpMessageSender.removeMaster(
                                          widget.deviceConnection,
                                          lamp.device.id,
                                          master.device.id);
                                    } else {
                                      lamp.master.add(master.device.id);
                                      TcpMessageSender.addMaster(
                                          widget.deviceConnection,
                                          lamp.device.id,
                                          master.device.id);
                                    }
                                  });
                                }
                              : null,
                        ),
                      );
                    },
                    legendCell: TextButton(
                      onPressed: clearState,
                      child: const Text(''),
                    ),
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
              ),
          ],
        ),
        floatingActionButton: !_isEditable && !_isLoading
            ? ElevatedButton(
                onPressed: () {
                  TcpMessageSender.sendStartConfig(widget.deviceConnection);
                  setState(() {
                    _isEditable = true;
                  });
                },
                child: Text(_isEditable ? '' : 'Abilita Modifica'),
              )
            : null,
      ),
    );
  }
}
