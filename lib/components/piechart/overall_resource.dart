import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OverallPieChart extends StatefulWidget {
  final int count;
  final bool isDevice;
  
  const OverallPieChart({super.key , required this.count ,required this.isDevice } );

  

  @override
  State<OverallPieChart> createState() => _OverallPieChartState();
}

class _OverallPieChartState extends State<OverallPieChart> {
  final List<String> deviceChart = ['Mrng' , 'Aftnoon' , 'Nyt'];
  List<PieChartSectionData> showingSections(){
    return generatePieChartData(widget.count).asMap().entries.map((chart)=> PieChartSectionData(
      color: chart.value.color ,
      value: chart.value.value1 + chart.value.value2 ,
      title: widget.isDevice ? deviceChart[chart.key]  :  chart.value.title  ,
      radius: chart.value.radius ,
      titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
    )).toList() ;
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
            sectionsSpace: 0, // Space between sections
            centerSpaceRadius: 10, // Space in the middle
            sections: showingSections(),
            borderData: FlBorderData(show: false),
      )
    );
  }
}