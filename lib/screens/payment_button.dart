import 'package:purplestarmd/constants.dart';
import 'package:flutter/material.dart';

class PaymentToggleButton extends StatefulWidget {
  @override
  _PaymentToggleButtonState createState() => _PaymentToggleButtonState();
}

const double width = 100.0;
const double height = 80.0;
const double loginAlign = -1;
const double signInAlign = 1;
const Color selectedColor = Colors.white;
const Color normalColor = Colors.black54;

class _PaymentToggleButtonState extends State<PaymentToggleButton> {
  late double xAlign;
  late Color loginColor;
  late Color signInColor;

  @override
  void initState() {
    super.initState();
    xAlign = loginAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 140,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  xAlign = loginAlign;
                  loginColor = selectedColor;
                  signInColor = normalColor;
                });
              },
              child: Align(
                alignment: Alignment(-1, 0),
                child: Container(
                  width: width * 0.7,
                  // color: Colors.blue,
                  color: mWhite,
                  alignment: Alignment.center,
                  child: Text(
                    'Debit',
                    style: TextStyle(
                      // color: loginColor,
                      color: mDartBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  xAlign = signInAlign;
                  signInColor = selectedColor;
                  loginColor = normalColor;
                });
              },
              child: Align(
                alignment: Alignment(1, 0),
                child: Container(
                  width: width * 0.7,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                    'Cash',
                    style: TextStyle(

                      // color: signInColor,
                      color: mDartBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}