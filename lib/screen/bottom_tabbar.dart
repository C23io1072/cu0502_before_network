import 'package:flutter/material.dart';
import 'package:sem2/screen/aa_nothindo-screen.dart';
import 'package:sem2/screen/home_screen.dart';
import 'package:sem2/screen/learned/nested_scroll_view.dart';
import 'package:sem2/screen/learned/nested_scroll_view_screen.dart';
import 'package:sem2/screen/notification_screen.dart';
import 'package:sem2/screen/promotion_screen.dart';
import 'package:sem2/screen/promotion_screen1.dart';
import 'package:sem2/screen/tabbar_play.dart';

import 'package:sem2/screen/tabbar_play2.dart';
import 'package:sem2/screen/tabbar_screen_template.dart';

class BottomTabbarScreen extends StatefulWidget {
  const BottomTabbarScreen({super.key});

  @override
  State<BottomTabbarScreen> createState() => _MainPageState();
}

class _MainPageState extends State<BottomTabbarScreen> {
  int tabIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const PromotionScreen(),
    const NoThingDoScreen(),
    const TabBarPlay(),
    const NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tabIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[400],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {
          setState(() {
            tabIndex = 0;
            // print(tabIndex);
          });
        },
        child: const Icon(Icons.window_outlined, color: Colors.white, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: (index) {
          //the middle btm tab behind FloadingActionButton should do nothing!!!
          if (index != 2) {
            setState(() {
              tabIndex = index;
            });
          }
        },
        selectedItemColor: Colors.deepPurple[400],
        unselectedItemColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gif_box),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gif_box),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notff',
          ),
        ],
      ),
    );
  }
}
