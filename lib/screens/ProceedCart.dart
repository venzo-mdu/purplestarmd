import 'package:flutter/material.dart';

class ProceedCart extends StatefulWidget {
  const ProceedCart({Key? key,}) : super(key: key);
  // String value = 'Bala';

  @override
  State<ProceedCart> createState() => _ProceedCartState();
}

class _ProceedCartState extends State<ProceedCart> {

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
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFF1a1229),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const ListTile(
                          leading: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          ),
                          title: Text(
                            'back',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
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
                                padding: EdgeInsets.only(left: 100, right: 50),
                                child: Center(
                                  child: Row(
                                    children: const [
                                      Icon(Icons.shopping_cart),
                                      Text('\t\t\t\tPlace Order'),
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
                            padding: EdgeInsets.only(left: 17),
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
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/6/6f/Ben_10_reboot_logo.png',), width: 50, height: 50,),
                      Text('Product Name'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FloatingActionButton.extended(
                            onPressed: (){},
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            label: Text('HYBRID \n EDIT',style: TextStyle(color: Colors.blue),),
                            icon: Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                Divider(color: Colors.red,),
                TextButton(onPressed: (){}, child: Text('Promo Code')),
                Text("value"),

              ],
            )


        )
    );
  }
}