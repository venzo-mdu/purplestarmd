// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AccountSummary extends StatefulWidget {
  const AccountSummary({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  State<AccountSummary> createState() => _AccountSummaryState();
}

class _AccountSummaryState extends State<AccountSummary> {
  late User _currentUser;
  late String myPhone;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
              label: Text(
                'Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 00),
              child: Text(
                "Account",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'BebasNeue'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
              thickness: .5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  onPrimary: Colors.black,
                ),
                child: Text(
                  'Edit',
                  style: TextStyle(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 00),
              child: Text(
                'Name : ${_currentUser.displayName}',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 00),
              child: Text(
                'Email : ${_currentUser.email}',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 00),
              child: FutureBuilder(
                future: _fetch(),
                builder: (context, snapshot){
                  if(snapshot.connectionState != ConnectionState.done)
                    return Text("Loading data...Please wait");
                  return Text("Email : $myPhone");
                },
              )
            ),
          ],
        ),
      ),
    );
  }

  _fetch() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser;
    if (firebaseUser != null)
      await FirebaseFirestore.instance
          .collection('userInfo')
          .doc(firebaseUser.uid)
          .get()
          .then((phone) {
        myPhone = phone.data()!['phone'];
        print(myPhone);
      }).catchError((e) {
        print(e);
      });
  }
}



// Padding(
//   padding: EdgeInsets.only(left: 20, top: 00),
//   child: Text(
//     'Phone : ${_currentUser.phoneNumber}',
//     style: TextStyle(
//         fontSize: 14,
//         color: Colors.black,
//         fontWeight: FontWeight.w700,
//         fontFamily: 'poppins'),
//   ),
// ),