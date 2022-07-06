import 'package:flutter/material.dart';
import 'package:purplestarmd/WelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Purple Star',
      home:  WelcomeScreen(),

    );
  }
}


