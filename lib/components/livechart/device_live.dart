import 'dart:async';
import 'dart:math';

import 'package:energy_conserver_mobile/app-util.dart';
import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyLiveLineChart extends StatefulWidget {
  
  final String title;
  final String left , bottom , right = "" , top = "" ;
  dynamic leftInterval = null , bottomInterval = null;
  MyLiveLineChart({super.key , required this.title, required this.left , required this.bottom });

  MyLiveLineChart setLeftInterval(double interval){
    leftInterval = interval;
    return this;
  }



  MyLiveLineChart setBottomInterval(double interval){
    bottomInterval = interval;
    return this;
  }

  @override
  State<MyLiveLineChart> createState() => _DeviceLiveChartState();
}

class _DeviceLiveChartState extends State<MyLiveLineChart> with SingleTickerProviderStateMixin {
  
 late List<LineChartClass> points;
  late AnimationController _animationController;
  late Animation<double> _animation;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    
    points = getLineChartData(generateRandomValues(20 , 5, 15));
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),  // Animation duration
       vsync:  this        // vsync for the animation controller
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _autoUpdate();
  }

  


  void _autoUpdate(){
      _timer = Timer.periodic( const Duration(seconds: 2), (timer){
        updatePoints();

      });
  }

   @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
     _animationController.dispose();
  }

  void updatePoints() {
    setState(() {
       Random random = Random();
       double y = (random.nextInt(10) + 5).toDouble();
      points.add(LineChartClass(x: points.last.x + 1 , y: y));
      points.removeAt(0);
    });
       _animationController.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB( 5 , 20, 5, 20),
      child: Column(
        children: [ 
          Text(widget.title) ,
          AspectRatio(
          aspectRatio: 1,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context , child) => LineChart(
              LineChartData(
                titlesData: FlTitlesData(
                  show: true ,
                  leftTitles: AxisTitles(
                    axisNameSize: 20 ,
                    axisNameWidget: Text(widget.left),
                    sideTitles: SideTitles(
                      showTitles: true ,
                      reservedSize: 25,
                      interval: widget.leftInterval,
                      minIncluded: false ,
                      maxIncluded: false
                    )
                  ),
                  bottomTitles: AxisTitles(
                    axisNameSize: 20,
                    axisNameWidget: Text(widget.bottom),
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 25,
                      interval:widget.bottomInterval,
                      minIncluded: false ,
                      maxIncluded: false
                    )
                  ),
                  rightTitles: AxisTitles(
                    axisNameSize: 20,
                    axisNameWidget: Text(widget.right)
                  ),
                  topTitles: AxisTitles(
                    axisNameSize: 20 ,
                    axisNameWidget: Text(widget.top)
                  )
                ),
                minY: 0,
                maxY: 20,
                gridData: const FlGridData( show:  false),
                lineTouchData: LineTouchData(
                  enabled: false
                ),
                lineBarsData:[
                   LineChartBarData(
                  spots: points.map((point)=>FlSpot(point.x, point.y)).toList(),
                  isCurved: true, // Curved line for smooth transition
                      curveSmoothness: 0.5,  // Smoothness of the curve
                      dotData: FlDotData(show: true), // Show dots on data points
                      belowBarData: BarAreaData(show: false), 
                )
                ],
              )
            ) 
          ),
        )]
      ),
    );
  }
}