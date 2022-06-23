import 'dart:io';

import 'package:flutter/material.dart';

import '../constants.dart';

class PushNotification extends StatelessWidget {
  List<bool> isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: mPrimaryColor.withOpacity(1),
            image: DecorationImage(
              image: AssetImage('assets/images/background-purple-star.jpg'),
              opacity: 95,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Flexible(
                child: Center(
                  child: Container(
                    width: 330,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                          child: Text(
                            '"\Purple Star" would like to send you push Notifications.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: mDark,
                                fontSize: 18,
                                letterSpacing: .25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 0, 90, 40),
                          child: Text(
                            'Notifications may includes alerts, sounds and icon badges. These can be configured in Settings.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        ToggleButtons(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: TextButton(
                                onPressed: () {},
                                child: Text('Dont allow'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  exit(0);
                                },
                                child: Text('Ok'),
                              ),
                            ),
                          ],
                          isSelected: isSelected,
                          onPressed: (int newIndex) {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
