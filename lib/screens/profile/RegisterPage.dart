import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text('Register page merge you soon'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text('Register page merge you soon'),
          )
        ],
      ),
    );
  }
}
