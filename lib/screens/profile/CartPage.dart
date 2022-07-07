import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:purplestarmd/models/SaleCategories.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:purplestarmd/screens/ProceedCart.dart';
import 'package:purplestarmd/screens/SalePage.dart';
import '../../models/DropDown.dart';
import '../../models/SaleServices.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Future<List<SalesCategory>>? futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<SalesCategory>>(
          future: futureProduct,
          builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                      child: Text(
                        'Showing ' + snapshot.data!.length.toString() + ' results',
                        style: const TextStyle(fontFamily: 'Poppins', fontSize: 18),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) {
                      List<String> selectedItemValue = <String>[
                        ("\$${snapshot.data![index].price} ${snapshot.data![index].productType.type1}"),
                        ("\$${snapshot.data![index].price} ${snapshot.data![index].productType.type2}"),
                        ("\$${snapshot.data![index].price} ${snapshot.data![index].productType.type3}")
                      ];
                      final defaultValue = selectedItemValue[0];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: SizedBox(
                                        height: 100.0,
                                        width: 100.0,
                                        child: Image(
                                          image: NetworkImage(snapshot
                                              .data![index].productImageUrl),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data![index].title,
                                          style: const TextStyle(
                                            fontFamily: 'Poppins Bold',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '- ' + snapshot.data![index].made,
                                          style: const TextStyle(
                                            fontFamily: 'Poppins Bold',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        DropDown(
                                            defaultValue: defaultValue,
                                            values: selectedItemValue,
                                            onItemSelected: (value) {
                                              print("Selected Item : $value");
                                            }),
                                        const SizedBox(height: 10),
                                        InkWell(
                                          onTap: () {
                                            AddToBasket(
                                                context, snapshot.data![index]);
                                          },
                                          child: Container(
                                            width: 125,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF297903),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: const Center(
                                                child: Text(
                                              'add to cart',
                                              style: TextStyle(
                                                  fontFamily: 'BebasNeue',
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                        ],
                      );
                    }),
              ],
              ),
            );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    ));
  }
}

AddToBasket(BuildContext context, SalesCategory product) async {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: MediaQuery.of(context).size.height * .70,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'added to basket',
                  style: TextStyle(fontFamily: 'BebasNeue', fontSize: 23),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0), //or 15.0
                      child: SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Image(
                          image: NetworkImage(product.productImageUrl),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.title),
                          Text('-' + product.made),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                    child: const Text('Proceed to checkout',
                        style:
                            TextStyle(fontFamily: 'BebasNeue', fontSize: 17)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProceedCart()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: const Color(0xFF562c8a),
                        side: const BorderSide(
                            width: 2.0, color: Color(0xFF562c8a)),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('Continue shopping',
                          style:
                              TextStyle(fontFamily: 'BebasNeue', fontSize: 17)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProceedCart()));
                      }),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'bogo deals',
                  style: TextStyle(
                      fontFamily: 'BebasNeue', fontSize: 30, color: Colors.red),
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: Image(
                          image: NetworkImage(product.productImageUrl),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.title),
                        Text(product.made),
                        Text(product.price)
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

//FutureBuilder(
//       future: DefaultAssetBundle.of(context).loadString('assets/json/products.json'),
//         builder: (context, snapshot){
//           var myProduct = json.decode(snapshot.data.toString());
//           print(myProduct);
//
//           return ListView.builder(
//               itemBuilder: (BuildContext context, int index) {
//                 return Card(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Product ID: '+myProduct[index]['productId'], style: TextStyle(fontSize: 25),),
//                       Text('Product Name: '+myProduct[index]['title'], style: TextStyle(fontSize: 25),),
//                       Text('Product Made: '+myProduct[index]['made'], style: TextStyle(fontSize: 25),),
//                       Text('Product URl: '+myProduct[index]['productImageUrl'], style: TextStyle(fontSize: 25),),
//                       Text('Product strains: '+myProduct[index]['strains'], style: TextStyle(fontSize: 25),),
//
//                     ],
//                   ),
//                 );
//               },
//             itemCount: myProduct == null ? 0 : myProduct.length,
//           );
//         },
//     );
