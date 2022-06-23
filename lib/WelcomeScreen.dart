import 'dart:io';

import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/UserPermissions.dart';
import 'constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background-purple-star.jpg'),
              fit: BoxFit.cover,
              // colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
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
                    width: 380,
                    height: 650,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Divider(thickness: 1, indent: 100, endIndent: 100),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/purple-star-md.png',
                                ),
                              ),
                            ),
                            child: Image.asset('assets/images/purple-star-md.png'),
                          ),
                        ),
                        Text(
                          'PURPLE STAR',
                          style: TextStyle(
                            fontFamily: "NanumMyeongjo",
                            color: mPrimaryColor,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Cannabis Dispensary',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: mDark,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 30, 30, 20),
                          child: Text(
                            'You must be at least 21 years of age to view this app',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: mDark,
                                fontSize: 20,
                                letterSpacing: .25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 0, 90, 40),
                          child: Text(
                            'By accessing this app, you accept the Terms of Use and Privacy policy.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserPermissions()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              primary: mPrimaryColor,
                              padding: EdgeInsets.fromLTRB(60, 25, 60, 25),
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          child: Text(
                            'I\'M AT LEAST 21 YEARS OLD',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: TextButton(
                            onPressed: () {
                              exit(0);
                            },
                            child: Text('I\'M NOT 21 YET'),
                            style: TextButton.styleFrom(
                              primary: mDark,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
