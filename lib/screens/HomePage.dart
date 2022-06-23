import 'package:flutter/material.dart';
import 'package:purplestarmd/constants.dart';
import 'package:purplestarmd/screens/profile/SignIn.dart';

import '../widgets/CustomAppBar.dart';
import '../widgets/CustomBottomNavigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
      ),
      
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}


