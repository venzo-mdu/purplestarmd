import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/SignIn.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';
import 'package:purplestarmd/widgets/CustomBottomNavigation.dart';

import '../../constants.dart';
import 'ProfilePage.dart';

class UserPassword extends StatefulWidget {
  const UserPassword({Key? key}) : super(key: key);

  @override
  State<UserPassword> createState() => _UserPasswordState();
}

class _UserPasswordState extends State<UserPassword> {
  final _formKey = GlobalKey<FormState>();
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sign In',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(22, 20, 0, 0),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: mPrimaryColor),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if(value?.isEmpty ?? true) {
                          return 'Please your valid Password';
                        }
                        return null;
                      },
                      onSaved: (String? value){
                        password = value;
                      },
                      obscureText: true,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        filled: true,
                        fillColor: mLightGrey,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        hintText: '**********',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: mPrimaryColor,
                      padding:
                      EdgeInsets.symmetric(vertical: 13, horizontal: 130),
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text(
                      'SUBMIT',
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
