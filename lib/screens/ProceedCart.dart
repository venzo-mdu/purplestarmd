import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:purplestarmd/models/SaleCategories.dart';
import 'package:purplestarmd/models/SaleServices.dart';
import 'package:purplestarmd/screens/profile/OrderHistory.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProceedCart extends StatefulWidget {
  const ProceedCart({
    Key? key,
    required this.cartTitle,
    required this.cartImage,
    required this.cartprice,
  }) : super(key: key);

  final String cartTitle;
  final String cartImage;
  final String cartprice;

  @override
  State<ProceedCart> createState() => _ProceedCartState();
}

class _ProceedCartState extends State<ProceedCart> {
  String? _title;
  String? _image;
  String? _price;

  final _auth = FirebaseAuth.instance;
  CollectionReference placeOrder = FirebaseFirestore.instance.collection('PlaceOrder');

  void initState() {
    _title = widget.cartTitle;
    _image = widget.cartImage;
    _price = widget.cartprice;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 140,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xFF1a1229),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Back',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF56BF92)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                      onPressed: () {




                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => OrderHistory(orderprice: , orderImage: product.productImageUrl, )),
                        // );

                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 85, right: 50),
                            child: Center(
                              child: Row(
                                children: const [
                                  Icon(Icons.shopping_cart_outlined),
                                  Text(
                                    '\t\t\t\tPlace Order',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 17, top: 10),
                        child: Text(
                          'YOUR CART',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xFFF2F3F2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: NetworkImage(
                              '$_image',
                            ),
                            width: 100,
                            height: 75,
                          ),
                          Text(
                            '$_title\n\$$_price',
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'BebasNeue'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 200, top: 0.0),
                            child: FloatingActionButton.extended(
                              onPressed: () {},
                              elevation: 0,
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              icon: Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ),
                              label: Text(
                                'HYBRID\nEDIT',
                                style: TextStyle(color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Divider(color: Colors.grey, thickness: .5),
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF656565)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 85, right: 50),
                                    child: Center(
                                      child: Row(
                                        children: const [
                                          Text(
                                            '+ ADD PROMO CODE',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("SUBTOTAL\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\$$_price", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    ],
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Divider(color: Colors.grey, thickness: .5, indent: 2,endIndent: 5,),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color(0xFFF2F3F2)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(left: 110, right: 50),
                    child: Center(
                      child: Row(
                        children: const [
                          Text(
                            'Keep Shopping',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
