import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DeviceLiveChart extends StatelessWidget {
  final String left , bottom , right = "" , top = "" ;
  final List<LineChartClass> points;
  final String title;
  dynamic leftInterval = null , bottomInterval = null;

  DeviceLiveChart({super.key , required this.title, required this.left , required this.bottom ,required this.points});
  
  DeviceLiveChart setLeftInterval(double interval){
    leftInterval = interval;
    return this;
  }
  DeviceLiveChart setBottomInterval(double interval){
    bottomInterval = interval;
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB( 5 , 20, 5, 20),
      child: Column(
        children: [ 
          Text(title) ,
          AspectRatio(
          aspectRatio: 1,
          child: LineChart(
            LineChartData(
              titlesData: FlTitlesData(
                show: true ,
                leftTitles: AxisTitles(
                  axisNameSize: 20 ,
                  axisNameWidget: Text(left),
                  sideTitles: SideTitles(
                    showTitles: true ,
                    reservedSize: 25,
                    interval: leftInterval,
                    minIncluded: false ,
                    maxIncluded: false
                  )
                ),
                bottomTitles: AxisTitles(
                  axisNameSize: 20,
                  axisNameWidget: Text(bottom),
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 25,
                    interval: bottomInterval,
                    minIncluded: false ,
                    maxIncluded: false
                  )
                ),
                rightTitles: AxisTitles(
                  axisNameSize: 20,
                  axisNameWidget: Text(right)
                ),
                topTitles: AxisTitles(
                  axisNameSize: 20 ,
                  axisNameWidget: Text(top)
                )
              ),
              gridData: const FlGridData( show:  false),
              lineBarsData:[
                 LineChartBarData(
                spots: points.map((point)=>FlSpot(point.x, point.y)).toList(),
                isCurved: false,
                curveSmoothness: 10,
                dotData: const FlDotData(
                  show: true
                )
              )
              ]
            )
          ),
        )]
      ),
    );
  }
}