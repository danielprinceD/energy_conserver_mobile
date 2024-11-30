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
        width : 150,
        child: SidebarX(
        controller: SidebarXController(selectedIndex: 0 , extended:  true),
        items: const [
          SidebarXItem(icon: Icons.home, label: 'Home'),
          SidebarXItem(icon: Icons.search, label: 'Search'),
        ],
            ),
      );;
  }
}