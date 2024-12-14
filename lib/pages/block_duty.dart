import 'package:energy_conserver_mobile/demo/classes.dart';
import 'package:energy_conserver_mobile/detail_page/block_details.dart';
import 'package:flutter/material.dart';
class MyBlocks extends StatefulWidget {
  final List<BlockClass>? blocks;
  const MyBlocks({super.key , required this.blocks});

  @override
  State<MyBlocks> createState() => _MyBlocksState();
}

class _MyBlocksState extends State<MyBlocks> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: 
           ( widget.blocks ?? []).asMap().entries.map((block)=>Padding(
              padding: const EdgeInsets.all(2.0),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => MyBlockDetails(block: block.value))
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5 , right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text( "${block.key+1}."+ block.value.name),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Owner : " + block.value.ownerName),
                                  Text("Devices : " + block.value.totalDevices.toString())
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),).toList()
    );
  }
}