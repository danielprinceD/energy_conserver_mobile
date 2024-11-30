import 'package:energy_conserver_mobile/demo/classes.dart';
import 'package:flutter/material.dart';

List<BuildingClass> buildings = [
   BuildingClass(1, "Building 1", "Daniel Prince") ,
   BuildingClass(2, "Building 2", "Akash") ,
   BuildingClass(3, "Building 3", "Gokul Raj") ,
];

List<BlockClass> blocks = [
  BlockClass(1, "Block 1", "Block 1", 10),
   BlockClass(2, "Block 1", "Block 2", 20),
    BlockClass(3, "Block 1", "Block 3", 4),
];

List<DeviceClass> devices = [
  DeviceClass(1, "Device 1"),
   DeviceClass(2, "Device 2"),
    DeviceClass(3, "Device 3"),
];


List<PieChartOverall> overallPieChart = [
  PieChartOverall( Colors.blue  , 50, 100, "Title 1"),
  PieChartOverall( Colors.red , 15, 100, "Title 2"),
  PieChartOverall(Colors.orange, 25, 100, "Title 3"),
  PieChartOverall(Colors.green, 25, 100, "Title 4"),
];