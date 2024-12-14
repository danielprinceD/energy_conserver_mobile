import 'package:energy_conserver_mobile/app-util.dart';
import 'package:energy_conserver_mobile/components/MyAppBar.dart';
import 'package:energy_conserver_mobile/demo/classes.dart';
import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:energy_conserver_mobile/pages/block_duty.dart';
import 'package:flutter/material.dart';

class BuildingDetails extends StatefulWidget {
  final BuildingClass building;
  const BuildingDetails({super.key ,required this.building });
  @override
  State<BuildingDetails> createState() => _BuildingDetailsState();
}

class _BuildingDetailsState extends State<BuildingDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(preferredSize: const Size.fromHeight(60) , child: MyAppBar(title: widget.building.name + " Blocks")),
      backgroundColor: const Color(AppData.bgColor),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              MyBlocks(blocks: buildingBlocks[widget.building.id])
            ],
          ),
        ),
      ),
    );
  }
}