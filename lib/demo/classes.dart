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
    double value1;
    double value2;
    String title;
    double radius;
    PieChartOverall(this.color , this.value1 ,  this.value2 , this.radius , this.title );
}