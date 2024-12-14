import 'package:energy_conserver_mobile/app-util.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width : SidebarUtil.width,
        child: SidebarX(
        controller: SidebarXController(selectedIndex: -1 , extended:  true),
        items : SidebarUtil.items.map((item)=>SidebarXItem(icon: item['icon'], label: item['label'] )).toList()
            ),
      );
  }
}