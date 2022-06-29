import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/HelpPage.dart';
import 'package:purplestarmd/screens/profile/RegisterPage.dart';

import '../constants.dart';
import '../screens/HomePage.dart';
import '../screens/profile/SignIn.dart';

class CustomBottomNavigation extends StatefulWidget{

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  // int _selectedIndex = 0;
  // final display = <Widget>[HomePage(), RegisterPage(), SignIn(), SignIn()];
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: display.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: mPrimaryColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home' ),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: 'Sales' ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart' ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile' ),
        ],
        // onTap: _onItemTapped,
      ),
    );
  }
}