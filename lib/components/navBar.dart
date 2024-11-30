import 'package:energy_conserver_mobile/app-util.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  
  final int currentIndex;
  final Function(int) onTap;
  const NavBar({super.key, required this.currentIndex , required this.onTap });


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(NavBarUtil.borderRadius )),
      child: Expanded(
        child: GNav(
          onTabChange: onTap,
          mainAxisAlignment:  MainAxisAlignment.end,
          activeColor: NavBarUtil.activeColor,
            backgroundColor: NavBarUtil.bgColor,
            color: NavBarUtil.color , 
            selectedIndex : currentIndex, 
            tabs: NavBarUtil.tabs.map(
              (tab)=> GButton(
                icon: tab['icon'],
                text: tab['text'],
              )
            ).toList() , 
        ),
      ),
    );
  }
}