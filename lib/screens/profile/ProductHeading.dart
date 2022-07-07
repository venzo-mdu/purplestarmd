import 'package:flutter/material.dart';

class ProductHeading extends StatefulWidget {
  const ProductHeading({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ProductHeading> createState() => _ProductHeadingState();
}

class _ProductHeadingState extends State<ProductHeading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        children: [
          Text(
            'Concentrates',
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
    );
  }
}
