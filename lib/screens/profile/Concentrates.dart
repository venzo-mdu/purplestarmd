import 'package:flutter/material.dart';

class Concentrates extends StatefulWidget {
  const Concentrates({Key? key, this.pageTitle}) : super(key: key);
  final pageTitle;

  @override
  State<Concentrates> createState() => _ConcentratesState();
}

class _ConcentratesState extends State<Concentrates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text('Concentrates'),
            )
          ],
        ),
      ),
    );
  }
}
