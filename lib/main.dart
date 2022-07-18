import 'package:flutter/material.dart';
import 'package:purplestarmd/WelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:purplestarmd/screens/profile/Order-Histry.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purple Star',
      home:  WelcomeScreen(),
      // home: OrderHistory(cartTitle: '', cartprice: '5.0', cartImage: '',)
      // builder: (context) => OrderHistry(cartTitle: '', cartprice: '', cartImage: '',)));


    );
  }
}


