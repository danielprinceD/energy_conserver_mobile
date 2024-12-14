
import 'package:energy_conserver_mobile/components/piechart/overall_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key  });
  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  
  String name = "Daniel Prince D";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child : Column(
          children: [
            Row(
              children: [
                Expanded(child: Container( child:  Text("Welcome , ${name}" ,style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold) , textAlign: TextAlign.center  )  , padding:EdgeInsets.only(top: 10 , bottom: 10))) ,
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container( 
                    padding: const EdgeInsets.only(top: 50 , bottom: 50), 
                    child: SvgPicture.asset(
                      'asserts/images/data_viewer.svg' ,
                      width: 100 ,
                      height: 200,
                    ),
                ) , 
                )
              ],
            ),
            Row(
              children: [
                 Expanded(child:  Container(  child:   Text("Overall Energy Resource" ,style: TextStyle(fontSize: 16 ) , textAlign: TextAlign.left  )  , padding:EdgeInsets.only(top: 10 , bottom: 10 , left: 40))) ,
              ],
            ),
           const Row(
              children: [
                Expanded(
                  child: SizedBox( child: OverallPieChart() , height: 270 )) ,
              ],
            ),
             Row(
              children: [
                Expanded(child: Container( child:   Text("Overall Water Resource" ,style: TextStyle(fontSize: 16 ) , textAlign: TextAlign.left  )  , padding:EdgeInsets.only(top: 10 , bottom: 10 , left : 40))) ,
              ],
            ),
           const Row(
              children: [
                Expanded(
                  child: SizedBox( child: OverallPieChart() , height: 270 )) ,
              ],
            ),
          ]
        )
      ),
    );
  }
}
