import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OverallPieChart extends StatefulWidget {
  const OverallPieChart({super.key});

  @override
  State<OverallPieChart> createState() => _OverallPieChartState();
}

class _OverallPieChartState extends State<OverallPieChart> {

  List<PieChartSectionData> showingSections(){
    return overallPieChart.map((chart)=> PieChartSectionData(
      color: chart.color ,
      value: chart.value ,
      title: chart.title ,
      radius: chart.radius ,
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