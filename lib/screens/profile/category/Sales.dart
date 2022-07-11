import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/screens/profile/ProductHeading.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key, required this.pageTitle}) : super(key: key);
  final String pageTitle;

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  String? _title;

  @override
  void initState() {
    _title = widget.pageTitle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    '$_title',
                    style: TextStyle(fontSize: 30, fontFamily: 'BebasNeue'),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 125),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.filter_alt_outlined),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.tune_outlined),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // CartPage(),
          ],
        ),
      ),
    );
  }
}
