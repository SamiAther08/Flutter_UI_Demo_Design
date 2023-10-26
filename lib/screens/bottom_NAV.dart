import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:xwheelsdeal/screens/catogories.dart';
import 'package:xwheelsdeal/screens/home.dart';
import 'package:xwheelsdeal/screens/inbox.dart';
import 'package:xwheelsdeal/screens/profile.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    Inbox(),
    Catogories(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Navigation Bar'),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 94, 97, 244),
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ],
        ),
        child: SafeArea(
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                iconSize: 24,
              ),
              GButton(
                icon: Icons.chat,
                text: 'Chat',
              ),
              GButton(
                icon: Icons.car_rental_rounded,
                text: 'Categories',
              ),
              GButton(
                icon: Icons.account_circle,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
