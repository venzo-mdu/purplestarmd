import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/HomePage.dart';
import 'package:purplestarmd/screens/PushNotification.dart';
import 'package:purplestarmd/screens/profile/SignIn.dart';
import 'constants.dart';
import 'package:purplestarmd/WelcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purple Star',
      home:  SignIn(),
    );
  }
}


