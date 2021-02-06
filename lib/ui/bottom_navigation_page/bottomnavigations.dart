import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/config/app_color.dart';
import 'file:///E:/workspace/smiling-sniper-fc-app/lib/ui/home_screen.dart';
import 'package:smiling_sniper_fc_app/ui/bottom_navigation_page/profile_view.dart';

class Bottomnavigations extends StatefulWidget {
  @override
  _BottomnavigationsState createState() => _BottomnavigationsState();
}

class _BottomnavigationsState extends State<Bottomnavigations> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    ProfileView(),

  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, //
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }
}
