import 'package:energy_conserver_mobile/app-util.dart';
import 'package:energy_conserver_mobile/components/MyAppBar.dart';
import 'package:energy_conserver_mobile/demo/classes.dart';
import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:energy_conserver_mobile/pages/devices_list.dart';
import 'package:flutter/material.dart';


class MyBlockDetails extends StatefulWidget {
  final BlockClass block;
  const MyBlockDetails({super.key , required this.block});

  @override
  State<MyBlockDetails> createState() => _MyBlockDetailsState();
}

class _MyBlockDetailsState extends State<MyBlockDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(preferredSize: const Size.fromHeight(60), child: MyAppBar(title: widget.block.name + " Devices") ),
      backgroundColor: const Color(AppData.bgColor), 
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
           child: MyDevices(devices: blockDevices[widget.block.id])
           )
        ),
    );
  }
}