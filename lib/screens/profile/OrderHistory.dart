import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({
    Key? key,
    required this.orderImage,
    required this.orderprice,
  }) : super(key: key);

  final String orderImage;
  final String orderprice;

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  String? _price;
  String? _image;

  void initState() {
    _image = widget.orderImage;
    _price = widget.orderprice;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('$_price'),
        ),
      ),
    );
  }
}
