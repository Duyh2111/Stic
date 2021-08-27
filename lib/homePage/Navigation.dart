import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'DetailScreen.dart';
import 'hpage.dart';
import '../Setting/SettingScreen.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    ListUsers(),
    DetailScreen(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Feather.home,
              color: Colors.blue,
            ),
            title: Text('HOME'),
            activeIcon: Icon(
              Feather.home,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.calendar,
              color: Colors.blue,
            ),
            title: Text('CALENDAR'),
            activeIcon: Icon(
              FontAwesome.calendar,
              color: Colors.blue,
            ),
          ),
          
          BottomNavigationBarItem(
            icon: Icon(
              EvilIcons.user,
              color: Colors.blue,
              size: 36,
            ),
            title: Text('PROFILE'),
            activeIcon: Icon(
              EvilIcons.user,
              color: Colors.blue,
              size: 36,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}