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
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 90, 20, 50),
                    child: Container(
                      width: 355,
                      height: 475,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/purple-star-md.png',
                                ),
                              ),
                            ),
                            child: Image.asset('assets/images/purple-star-md.png', width: 125, height: 130,),
                          ),
                          Text(
                            'PURPLE STAR',
                            style: TextStyle(
                              fontFamily: "NanumMyeongjo",
                              color: mPrimaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(45, 50, 20, 10),
                            child: Text(
                              'Purple Star uses notifications to help you stay on top of:',
                              style: TextStyle(
                                  fontFamily: 'Poppins-Bold',
                                  color: mDark,
                                  fontSize: 18,
                                  // letterSpacing: .25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(55, 10, 55, 25),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('\u2022 Lates deals\n\u2022 Personalised offers\n\u2022 Expiry reminders, and more',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100
                              ),),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                primary: mPrimaryColor,
                                padding: EdgeInsets.fromLTRB(140, 15, 140, 15),
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'BebasNeue',
                                )),
                            child: Text(
                              'Allow',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextButton(
                              onPressed: () {
                                exit(0);
                              },
                              child: Text('NOT YET', style: TextStyle(fontFamily: 'BebasNeue', fontSize: 18,fontWeight: FontWeight.w100, letterSpacing: .5),),
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
