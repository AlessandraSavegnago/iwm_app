import 'package:flutter/material.dart';
import 'package:iwm_app/proto/config.pb.dart';
import '../../utils/connection.dart';
import 'sensor.dart';

class SensorListPage extends StatefulWidget {
  final IwmMaster master;
  final DeviceConnection deviceConnection;
  final bool isEditable;

  const SensorListPage({super.key, required this.master, required this.deviceConnection, required this.isEditable});

  @override
  State<SensorListPage> createState() =>
      _SensorListPageState();
}

class _SensorListPageState
    extends State<SensorListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.master.device.name),
      ),
      body: ListView.builder(
        itemCount: widget.master.sensor.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
            child: SizedBox(
              width: 50,
              height: 40,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SensorConfigurationPage(
                        deviceConnection: widget.deviceConnection,
                        sensor: widget.master.sensor[index],
                        idMaster: widget.master.device.id,
                        isEditable: widget.isEditable,
                      ),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: const BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                child: Text(widget.master.sensor[index].type),
              ),
            ),
          );
        },
      ),
    );
  }
}
