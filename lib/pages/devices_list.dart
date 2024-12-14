import 'package:energy_conserver_mobile/demo/classes.dart';
import 'package:energy_conserver_mobile/detail_page/device_details.dart';
import 'package:flutter/material.dart';

class MyDevices extends StatefulWidget {
  final List<DeviceClass> ? devices;
  const MyDevices({super.key , required this.devices});

  @override
  State<MyDevices> createState() => _MyDevicesState();
}

class _MyDevicesState extends State<MyDevices> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children:
           ( widget.devices ?? []).asMap().entries.map((device)=>Padding(
              padding: const EdgeInsets.all(2.0),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context , 
                    MaterialPageRoute(
                      builder: (context) => MyDeviceDetail(
                          device: device.value,
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
                        padding: const EdgeInsets.only(top: 20 ,bottom: 20, left: 10),
                        child: Text( "${device.key + 1}."+ device.value.name),
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