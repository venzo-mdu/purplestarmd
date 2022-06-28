import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/screens/profile/ProfilePage.dart';
import 'package:purplestarmd/screens/profile/SignIn.dart';

import '../../constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? name;

  bool visiblePassword = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'register',
                style: TextStyle(fontFamily: 'BebasNeue', fontSize: 30),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 8, 8, 5),
                      child: Text(
                        'full name',
                        style: TextStyle(
                            color: mPrimaryColor,
                            fontFamily: 'BebasNeue',
                            fontSize: 13),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if(value?.isEmpty ?? true) {
                            return 'Please your name';
                          }
                          return null;
                        },
                        onSaved: (String? value){
                          name = value;
                        },
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                          hintText: 'John Doe',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 8, 8, 5),
                      child: Text(
                        'email',
                        style: TextStyle(
                            color: mPrimaryColor,
                            fontFamily: 'BebasNeue',
                            fontSize: 13),
                      ),
                    ),
                    Form(
                      child: TextFormField(
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
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                          hintText: 'johndoe@email.com',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 8, 8, 5),
                      child: Text(
                        'phone',
                        style: TextStyle(
                            color: mPrimaryColor,
                            fontFamily: 'BebasNeue',
                            fontSize: 13),
                      ),
                    ),
                    TextField(
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                        hintText: '415 456 7890',
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15, 8, 8, 5),
                      child: Text(
                        'password',
                        style: TextStyle(
                            color: mPrimaryColor,
                            fontFamily: 'BebasNeue',
                            fontSize: 13),
                      ),
                    ),
                    Form(
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if(value?.isEmpty ?? true) {
                            return 'Please your valid Password';
                          }
                          return null;
                        },

                        obscureText: !visiblePassword,
                        style: const TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          filled: true,
                          fillColor: mLightGrey,
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          hintText: 'At least 8 characters ',
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: visiblePassword
                                  ? mPrimaryColor
                                  : mLightGrey,
                            ),
                            onPressed: () {
                              setState(() => visiblePassword = !visiblePassword);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CheckboxListTile(
                    contentPadding: const EdgeInsets.all(0),
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        value = value ?? false;
                      });
                    },
                    title: const Text(
                      'I agree to receive texts as part of Purple Star\'s loyalty and marketing program and understand consent is not required to purchase.*',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: mPrimaryColor),
              ),

              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                  child: InkWell(
                      onTap: () {
                        if(_formKey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: mPrimaryColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Center(
                            child: Text(
                              'register',
                              style: TextStyle(
                                  fontFamily: 'BebasNeue',
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),),),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      print('Sign Up Pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 15,
                          color: mGrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Already have an account? '),
                          TextSpan(
                              text: 'Login',
                              style: TextStyle(color: mGreen,fontFamily: 'Poppins', fontSize: 15)),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
