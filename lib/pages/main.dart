
import 'package:energy_conserver_mobile/app-util.dart';
import 'package:energy_conserver_mobile/components/navBar.dart';
import 'package:energy_conserver_mobile/components/slider.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {

  int selectedIndex = AppData.pageStartsFrom;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(AppData.bgColor) ,
      toolbarHeight: 40,
      leading: IconButton(
        icon: const Icon(Icons.menu  ),
        onPressed: () {
         _scaffoldKey.currentState?.openDrawer(); // Open the drawer when menu is pressed
        },
      ),
    ),
    
    
        body: AppData.pages[selectedIndex]  ,
        backgroundColor: const Color(AppData.bgColor),
        bottomNavigationBar : NavBar(
          currentIndex : selectedIndex,
          onTap: (index) => {
            setState(() {
              selectedIndex = index;
            })
          },
        ),
      drawer: const MySlider()
    
    );
  }
}