import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/SignIn.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';
import 'package:purplestarmd/widgets/CustomBottomNavigation.dart';

import '../../constants.dart';
import 'ProfilePage.dart';

class UserPassword extends StatefulWidget {
  const UserPassword({
    Key? key,
    required this.email,
  }) : super(key: key);
  final String email;

  @override
  State<UserPassword> createState() => _UserPasswordState();
}

class _UserPasswordState extends State<UserPassword> {
  final _formKey = GlobalKey<FormState>();
  String? password;
  String? _email;
  final _auth = FirebaseAuth.instance;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if(user != null) {
        loggedInUser = user;
        print(loggedInUser.)
      }
    }
  }

  @override
  void initState() {
    _email = widget.email;
    super.initState();
  }

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('$_email'),
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
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please your valid Password';
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        passwordController.text = value!;
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
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: ElevatedButton(
                      onPressed: () async {
                        try{
                          final user = await _auth.signInWithEmailAndPassword(
                              email: _email, password: passwordController.text);
                          if (user != null) {
                            Navigator.pushAndRemoveUntil(MaterialPageRoute(
                                builder: (context) => ProfilePage(user: user)),
                                ModalRoute.withName('/');
                            );
                          }
                        } catch(e) {
                          print(e);
                        }

                        // signIn(_email!, passwordController.text);
                        // if(_formKey.currentState!.validate()) {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(user: null,)));
                        // }
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
                        style: TextStyle(fontFamily: 'BebasNeue', fontSize: 20),
                        // textScaleFactor: 1.5,
                      ),
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

