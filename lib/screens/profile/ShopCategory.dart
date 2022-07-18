import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';

class ShopCategory extends StatefulWidget {
  const ShopCategory({Key? key}) : super(key: key);

  @override
  State<ShopCategory> createState() => _ShopCategoryState();
}

class _ShopCategoryState extends State<ShopCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CartPage(),
    );
  }
}
