import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:energy_conserver_mobile/detail_page/building_details.dart';
import 'package:flutter/material.dart';

class MyBuildings extends StatefulWidget {
  const MyBuildings({super.key});

  @override
  State<MyBuildings> createState() => _MyBuildingsState();
}

class _MyBuildingsState extends State<MyBuildings> {
  @override
  Widget build(BuildContext context) {
    return 
        Column(
          children:
            buildings.asMap().entries.map((build)=>Padding(
              padding: const EdgeInsets.all(2.0),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context , 
                    MaterialPageRoute(
                      builder: (context) => BuildingDetails(
                        building : build.value
                      )
                      )
                  )
                },
                child: Row(
                  children: [
                    Expanded(
                      
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white ,
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          )
                        ),
                        padding: EdgeInsets.only(top: 20 ,bottom: 20, left: 10),
                        child: Text( "${build.key+1}."+ build.value.name),
                      ),
                    ),
                  ],
                ),
              ),
            ),).toList()
          ,
        );
  }
}