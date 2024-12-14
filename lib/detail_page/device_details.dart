import 'package:energy_conserver_mobile/app-util.dart';
import 'package:energy_conserver_mobile/components/MyAppBar.dart';
import 'package:energy_conserver_mobile/components/livechart/device_live.dart';
import 'package:energy_conserver_mobile/demo/classes.dart';
import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:flutter/material.dart';

class MyDeviceDetail extends StatefulWidget {
  final DeviceClass device;
  const MyDeviceDetail({super.key , required this.device});

  @override
  State<MyDeviceDetail> createState() => _MyDeviceDetailState();
}

class _MyDeviceDetailState extends State<MyDeviceDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppData.bgColor),
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60), 
        child: MyAppBar(title: "${widget.device.name} Details",
      )
      ),
      body: Column(
        children: [
          MyLiveLineChart( title: "${widget.device.name} Live Data" , left : "KWatts" , bottom: "Time").setLeftInterval(2).setBottomInterval(3),
        ],
      ) 
    );
  }
}