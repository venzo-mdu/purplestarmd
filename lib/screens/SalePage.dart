import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';

import '../models/SaleCategories.dart';
import '../models/SaleServices.dart';

class SalePage extends StatefulWidget {
  const SalePage({Key? key}) : super(key: key);

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  Future<List<SalesCategory>>? futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    'Sales',
                    style: TextStyle(fontSize: 30, fontFamily: 'BebasNeue', color: Colors.red.shade900),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 220),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.filter_alt_outlined),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
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
            CartPage(),
          ],
        ),
      ),
    );
  }
}
