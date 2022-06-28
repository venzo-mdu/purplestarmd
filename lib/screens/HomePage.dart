import 'package:flutter/material.dart';
import 'package:purplestarmd/constants.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/screens/profile/HelpPage.dart';
import 'package:purplestarmd/screens/profile/HomeContent.dart';
import 'package:purplestarmd/screens/profile/RegisterPage.dart';
import 'package:purplestarmd/screens/profile/SignIn.dart';
import 'package:purplestarmd/screens/profile/UserPassword.dart';

import '../widgets/CustomAppBar.dart';
import 'SalePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final display = [HomeContent(), SalePage(), CartPage(), SignIn() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      // body: Center(
      //   child: display.elementAt(currentIndex),
      // ),

      body: display[currentIndex],

      // body: IndexedStack(
      //   index: currentIndex,
      //   children: display,
      // ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.purple.shade50,
          labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
        ),
          child: NavigationBar(
            height: 60,
            backgroundColor: Color(0xFFF1F5FB),
            selectedIndex: currentIndex,
            onDestinationSelected: (currentIndex) => setState(() => this.currentIndex = currentIndex),
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home'
              ),
              NavigationDestination(
                  icon: Icon(Icons.monetization_on),
                  label: 'Sales'
              ),
              NavigationDestination(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart'
              ),
              NavigationDestination(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile'
              ),
            ],
          ),





        // type: BottomNavigationBarType.fixed,
        // showUnselectedLabels: true,
        // unselectedItemColor: Colors.black,
        // selectedItemColor: mPrimaryColor,
        // currentIndex: currentIndex,
        // onTap: (int index) =>setState(() => currentIndex = index),
        // items: [
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home' ),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.monetization_on),
        //       label: 'Sales' ),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.shopping_cart),
        //       label: 'Cart' ),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.account_circle),
        //       label: 'Profile' ),
        // ],
      ),
    );
  }
}


