import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 5,
      toolbarHeight: 500,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(25, 15, 0, 15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          // width: MediaQuery.of(context).size.width * 0.8,
          height: 35,
          width: MediaQuery.of(context).size.width * 0.8,
          child: const TextField(
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(15, 0, 10, 0),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: Colors.transparent
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(30.0)
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(width: 1, color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              hintText: 'Search Purple Star',
              suffixIcon: Icon(Icons.search_sharp),
            ),
          ),
        ),
      ),
    );
  }
}
