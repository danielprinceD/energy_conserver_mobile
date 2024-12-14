import 'package:energy_conserver_mobile/app-util.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  final String title;
  const MyAppBar({super.key , required this.title });

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          child: AppBar(
            iconTheme: AppBarHeader.iconColor,
            backgroundColor: AppBarHeader.bgColor,
            title: Text(  widget.title , style: const TextStyle( color:  AppBarHeader.frColor ),) ,
            titleTextStyle: const TextStyle(color: Colors.black , fontSize: 18),
          ),
        );
  }
}
