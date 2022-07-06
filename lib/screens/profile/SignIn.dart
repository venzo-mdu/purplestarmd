import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:purplestarmd/constants.dart';
import 'package:purplestarmd/screens/profile/UserPassword.dart';
import 'RegisterPage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  final _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sign In',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.5,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(22, 30, 0, 0),
                    child: Text(
                      'phone or email',
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
                      child: TextFormField (
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if(value?.isEmpty ?? true) {
                            return 'Please enter your E-mail';
                          }
                          if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value!)){
                            return 'Please a valid Email';
                          }
                          return null;
                        },
                        onSaved: (String? value) {
                          email = value;
                        },
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
                          hintText: 'ex: johndoe@email.com',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),

                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(

                        onPressed: () {
                          if(_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => UserPassword()));
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
                          style: TextStyle(fontFamily: 'BebasNeue', fontSize: 20),
                          // textScaleFactor: 1.5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 18),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Poppins', fontSize: 13, color: mGrey, fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(text: 'Not a Member? '),
                            TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(color: mGreen, fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w600,)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Divider(color: Colors.black, indent: 0, height: 1,),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      trailing: const Icon(Icons.chevron_right),
                      title: Text('Help',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                  Divider(color: mGrey, indent: 0, height: 1,),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      trailing: Icon(Icons.chevron_right),
                      title: Text(
                        'Blog',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Divider(color: mGrey, indent: 0, height: 1,),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      trailing: const Icon(Icons.chevron_right),
                      title: Text(
                        'About',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



}


