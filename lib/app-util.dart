
import 'package:energy_conserver_mobile/pages/chat.dart';
import 'package:energy_conserver_mobile/pages/home.dart';
import 'package:energy_conserver_mobile/pages/my_duty.dart';
import 'package:energy_conserver_mobile/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AppData{
    
    static const String appTitle = "Energy Conserver";
    static const int bgColor = 0x99EEFFF6;
    static const List pages = [
        MyDuty(),
        HomePage(), 
        MyChats() ,
        MyProfile()
    ];
    static const int pageStartsFrom = 0;
}

class AppBarHeader {
  static const bgColor = Colors.black;
  static const frColor = Colors.white;
  static const iconColor = IconThemeData(
     color: Colors.white
  );
}

class NavBarUtil{
  
  static const bgColor = Colors.black;
  static const activeColor = Colors.white;
  static const color = Colors.white;
  static const double borderRadius = 30;
   static const List<Map<String , dynamic >>  tabs = [
     {

        'icon' : LineIcons.trophy,
        'text' : 'My Duty'
     },
     {
      'icon': LineIcons.home,
      'text': 'Home',
    },
    {
      'icon' : LineIcons.facebookMessenger ,
      'text' : 'My Chat' ,
    },
    {
      'icon': LineIcons.user,
      'text': 'Profile',
    }
  ];
}

class SidebarUtil {
    static const double width = 200;
    static const List<Map<String , dynamic>> items = [
       {
        'icon' : Icons.electric_bolt,
        'label' : 'Energy Resource'
       },
      {
        'icon': Icons.water,
        'label' : 'Water Resource' 
      }
    ];
}