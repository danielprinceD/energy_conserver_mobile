
import 'package:energy_conserver_mobile/app-util.dart';
import 'package:energy_conserver_mobile/components/navBar.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          
          body: AppData.pages[selectedIndex]  ,

          bottomNavigationBar : NavBar(
            currentIndex : selectedIndex,
            onTap: (index) => {
              setState(() {
                selectedIndex = index;
              })
            },
          ),

      ),
    );
  }
}