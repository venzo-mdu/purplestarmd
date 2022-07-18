import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import '../../widgets/CustomAppBar.dart';

class OrderHistory extends StatefulWidget {
  // const OrderHistory({Key? key}) : super(key: key);
  const OrderHistory({
    Key? key,
    required this.cartTitle,
    required this.cartImage,
    required this.cartprice,
  }) : super(key: key);

  final String cartTitle;
  final String cartImage;
  final String cartprice;

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  String? _title;
  String? _image;
  String? _price;

  DateTime dateTime = DateTime.now();


  void initState() {
    _title = widget.cartTitle;
    _image = widget.cartImage;
    _price = widget.cartprice;
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
            SizedBox(height: 20,),


            Padding(padding: EdgeInsets.only(left: 20, top: 00), child: Text(
              "ORDER HISTORY",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  fontFamily: 'BebasNeue'),
            ),),
            SizedBox(height: 10,),

            Divider(
              color: Colors.grey,
              thickness: 10,
            ),

            Padding(padding: EdgeInsets.only(left: 20, top: 00),
              child: Text(
                DateFormat.MMMMEEEEd().format(dateTime),                 //('yyyy-MM-dd').format(DateTime.now()),
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'poppins'),
            ),),

            Text('\$$_price'),

            Image(
              image: NetworkImage(
                '$_image',
              ),
              width: 100,
              height: 75,
            )

          ],
        ),
      ),
    );
  }
}
