import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/toggle_button.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountSummary extends StatefulWidget {
  const AccountSummary({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  State<AccountSummary> createState() => _AccountSummaryState();
}

class _AccountSummaryState extends State<AccountSummary> {
  late User _currentUser;

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
        // padding: EdgeInsets.only(top: 00, left: 20, right: 20),

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
            Divider(
              color: Colors.grey,
              thickness: .15,
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 310),
              child: SizedBox(
                width: 75,
                height: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[400],
                    // shape: const CircleBorder(),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(35.0),
                    ),
                    onPrimary: Colors.black,
                  ),
                  child: Text(
                    'Edit',
                    style: TextStyle(),
                  ),
                ),
              ),
            ),

            Padding(
                padding: EdgeInsets.only(left: 20, top: 00),
                child: Row(
                  children: [
                    Text(
                      'Name: ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'poppins'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        '${_currentUser.displayName}',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'poppins'),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),

            Padding(
                padding: EdgeInsets.only(left: 20, top: 00),
                child: Row(
                  children: [
                    Text(
                      'Email:',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'poppins'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: Text(
                        '${_currentUser.email}',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'poppins'),
                      ),
                    )
                  ],
                ),
            ),
            SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: 20, top: 00),
            //   child: Row(
            //     children: [
            //       Text(
            //         'Phone:',
            //         style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.black,
            //             fontWeight: FontWeight.w700,
            //             fontFamily: 'poppins'),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(left: 120),
            //         child: Text(
            //           '${_currentUser.phoneNumber}',
            //           style: TextStyle(
            //               fontSize: 14,
            //               color: Colors.black,
            //               fontWeight: FontWeight.w700,
            //               fontFamily: 'poppins'),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey,
              thickness: .5,
            ),
          ],
        ),
      ),
    );
  }
}
