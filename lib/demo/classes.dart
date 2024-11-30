import 'package:flutter/material.dart';

class BuildingClass {
    int id;
    String name;
    String ownerName;
    BuildingClass(this.id ,  this.name , this.ownerName);
}

class BlockClass {
    int id;
    String name;
    String ownerName;
    int totalDevices;
    BlockClass(this.id ,  this.name , this.ownerName , this.totalDevices);
}

class DeviceClass{
  int id; String name;
  DeviceClass(this.id , this.name);
}

class PieChartOverall{
    MaterialColor color;
    double value;
    String title;
    double radius;
    PieChartOverall(this.color , this.value , this.radius , this.title);
}