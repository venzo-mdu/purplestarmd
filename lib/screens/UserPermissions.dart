import 'dart:io';

import 'package:flutter/material.dart';
import 'package:purplestarmd/constants.dart';
import 'package:purplestarmd/screens/HomePage.dart';
import 'package:purplestarmd/screens/PushNotification.dart';
import 'package:purplestarmd/screens/profile/SignIn.dart';

class UserPermissions extends StatelessWidget {
  const UserPermissions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                      width: 380,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/purple-star-md.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'PURPLE STAR',
                            style: TextStyle(
                                fontFamily: "NanumMyeongjo",
                                color: mPrimaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(45, 30, 30, 20),
                            child: Text(
                              'Purple Star uses notifications to help you stay on top of:',
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
                                    builder: (context) => SignIn()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                primary: mPrimaryColor,
                                padding: EdgeInsets.fromLTRB(140, 20, 140, 20),
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            child: Text(
                              'Allow',
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
      ),
    );
  }
}
