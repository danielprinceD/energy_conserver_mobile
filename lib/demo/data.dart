import 'package:energy_conserver_mobile/demo/classes.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'dart:math';

List<BuildingClass> buildings = [
   BuildingClass(1, "Building 1", "Daniel Prince") ,
   BuildingClass(2, "Building 2", "Akash") ,
   BuildingClass(3, "Building 3", "Gokul Raj") ,
   BuildingClass(4, "Building 4", "Pushpa") ,
];

List<BlockClass> blocks = [
  BlockClass(1, "Block 1", "Owner 1", blockDevices[1]!.length),
   BlockClass(2, "Block 2", "Owner 2", blockDevices[2]!.length),
    BlockClass(3, "Block 3", "Owner 3", blockDevices[3]!.length),
     BlockClass(4, "Block 4", "Owner 4", blockDevices[4]!.length),
      BlockClass(5, "Block 5", "Owner 5", blockDevices[5]!.length),
       BlockClass(6, "Block 6", "Owner 6", blockDevices[6]!.length),
        BlockClass(7, "Block 7", "Owner 7", blockDevices[7]!.length),
         BlockClass(8, "Block 8", "Owner 8", blockDevices[8]!.length),
          BlockClass(9, "Block 9", "Owner 9", blockDevices[9]!.length),
          BlockClass(10, "Block 10", "Owner 10", blockDevices[10]!.length),
          BlockClass(11, "Block 11", "Owner 11", blockDevices[11]!.length),


];

List<DeviceClass> devices = [
  DeviceClass(1, "Device 1"),
   DeviceClass(2, "Device 2"),
    DeviceClass(3, "Device 3"),
    DeviceClass(4, "Device 4"),
    DeviceClass(5, "Device 5"),
    DeviceClass(6, "Device 6"),
    DeviceClass(7, "Device 7"),
    DeviceClass(8, "Device 8"),
    DeviceClass(9, "Device 9"),
    DeviceClass(10, "Device 10"),
    DeviceClass(11, "Device 11"),
    DeviceClass(12, "Device 12"),
    DeviceClass(13, "Device 13"),
    DeviceClass(14, "Device 14"),
    DeviceClass(15, "Device 15"),
    DeviceClass(16, "Device 16"),
    DeviceClass(16, "Device 17"),
];


Map<int , List<BlockClass>> buildingBlocks = { 

  1 : [ blocks[0] , blocks[1] , blocks[2] ] ,
  2 : [ blocks[3] , blocks[4] ] ,
  3 : [ blocks[5] , blocks[6] ] ,
  4 : [ blocks[7] , blocks[8] , blocks[9] , blocks[10] ]

};
   
Map<int , List<DeviceClass> > blockDevices = {
    1 : [devices[0] , devices[1] , devices[2]] ,
    2 : [devices[3] , devices[4] , devices[5],devices[6] , devices[7] , devices[8]] ,
    3 : [devices[9] , devices[10] , devices[11],devices[12] , devices[13] , devices[14],devices[15] , devices[16] , devices[2]] ,
    4 : [devices[7] , devices[5] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2]] , 
    5 : [devices[10] , devices[13] , devices[12],devices[0] , devices[1] , devices[2]] ,
    6  : [devices[4] , devices[6] , devices[2]] ,
    7 : [devices[5] , devices[5] , devices[7],devices[0] , devices[14] , devices[12],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2]] , 
    8 : [devices[6] , devices[4] , devices[2],devices[3] , devices[14] , devices[12]] ,
    9 : [devices[7] , devices[3] , devices[1],devices[6] , devices[14] , devices[2],devices[0] , devices[5] , devices[2]] ,
    10 : [devices[8] , devices[2] , devices[15] ,devices[9] , devices[13] , devices[5]],
    11 : [devices[9] , devices[1] , devices[16],devices[10] , devices[12] , devices[5],devices[0] , devices[4] , devices[2],devices[0] , devices[9] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2],devices[0] , devices[1] , devices[2]] 
};


List<PieChartOverall> overallPieChart = [
  PieChartOverall( Colors.blue  , 50, 100, "Title 1"),
  PieChartOverall( Colors.red , 15, 100, "Title 2"),
  PieChartOverall(Colors.orange, 25, 100, "Title 3"),
  PieChartOverall(Colors.green, 25, 100, "Title 4"),
];

class LineChartClass {
  final double x , y;
  LineChartClass({required this.x , required this.y});
}

List<double> generateRandomValues(int count, int min, int max) {
    final random = Random();
    return List<double>.generate(count, (index) => random.nextInt(max - min + 1).toDouble() + min);
  }

List<LineChartClass> getLineChartData(List<double> values) {
    return values.mapIndexed((idx , val) => LineChartClass(x: idx.toDouble() , y: val)).toList();
}