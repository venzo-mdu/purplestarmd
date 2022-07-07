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
      body: Column(
        children: [
          Center(
            child: Text('$_title'),
          ),
          // ProductHeading(title: widget.pageTitle),
          // CartPage(),
        ],
      ),
    );
  }
}
