import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/screens/profile/ProductHeading.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';

class Tinctures extends StatefulWidget {
  const Tinctures({Key? key, required this.pageTitle}) : super(key: key);
  final String pageTitle;

  @override
  State<Tinctures> createState() => _TincturesState();
}

class _TincturesState extends State<Tinctures> {
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
