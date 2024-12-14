import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:energy_conserver_mobile/pages/block_duty.dart';
import 'package:energy_conserver_mobile/pages/building_duty.dart';
import 'package:flutter/material.dart';

class MyDuty extends StatefulWidget {
  const MyDuty({super.key});

  @override
  State<MyDuty> createState() => _MyDutyState();
}

class _MyDutyState extends State<MyDuty> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                            Expanded(child: Container( child:   Text("My Buildings" ,style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold ) , textAlign: TextAlign.center  )  , padding:EdgeInsets.only(top: 10 , bottom: 10)))
                  ]
                ),
                Row(
              children: [
                Expanded(
                  child: Container(
                    child: MyBuildings(),
                  ),
                )
              ],
            ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
              children: [
                        Expanded(child: Container( child:   Text("My Blocks" ,style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold ) , textAlign: TextAlign.center  )  , padding:EdgeInsets.only(top: 10 , bottom: 10)))
              ]
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: MyBlocks(blocks: blocks,),
                  ),
                )
              ],
            )
              ],
            ),
          )
        ],
      ),
    );
  }
}