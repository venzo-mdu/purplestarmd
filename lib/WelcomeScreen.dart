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
                child: Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      width: 350,
                      height: 560,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 25,),
                          Divider(thickness: 1, indent: 100, endIndent: 100),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/purple-star-md.png',
                                ),
                              ),
                            ),
                            child: Image.asset('assets/images/purple-star-md.png', width: 125, height: 150,),
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
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'Cannabis Dispensary',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: mDark,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(35, 30, 50, 10),
                            child: Text(
                              'You must be at least 21 years of age to view this app.',
                              style: TextStyle(
                                  fontFamily: 'Poppins-Bold',
                                  color: mDark,
                                  fontSize: 17,
                                  // letterSpacing: .25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(35, 10, 35, 20),
                            child: Text(
                              'By accessing this app, you accept the Terms of Use and Privacy policy.',
                              style: TextStyle(fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
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
                                padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'BebasNeue',
                                )),
                            child: Text(
                              'I\'M AT LEAST 21 YEARS OLD',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextButton(
                              onPressed: () {
                                exit(0);
                              },
                              child: Text('I\'M NOT 21 YET', style: TextStyle(fontFamily: 'BebasNeue', fontSize: 18,fontWeight: FontWeight.w100, letterSpacing: .5),),
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
