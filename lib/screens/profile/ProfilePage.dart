import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/HomePage.dart';
import 'package:purplestarmd/screens/profile/AccountSummary.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';
import 'package:purplestarmd/widgets/CustomBottomNavigation.dart';


import '../../widgets/ShopbyCategory.dart';
import '../profile/category/Concentrates.dart';
import 'Order-Histry.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var profileShop = [
    'Concentrates',
    'Edibles',
    'Flowers',
    'Prerolls',
    'Tinctures',
    'Topicals',
    'Vape Pens',
    'Accessories',
    'Sales'
  ];
  var profileMenu = ['Account', 'Order History', 'Blog', 'About', 'Logout'];
  late User _currentUser;
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 30, 0, 5),
              child: Text(
                'Hi, ${_currentUser.displayName}',
                style: TextStyle(fontSize: 30, fontFamily: 'BebasNeue'),
              ),
            ),
            Divider(
              color: Colors.black45,
              indent: 0,
              height: 1,
            ),
            ExpansionTile(
              title: Text(
                'Shop',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins-Bold',
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                for (var profileShopCategory in profileShop)
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if (profileShopCategory == 'Concentrates') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            } else if (profileShopCategory == 'Edibles') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            } else if (profileShopCategory == 'Flowers') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            } else if (profileShopCategory == 'Prerolls') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            } else if (profileShopCategory == 'Tinctures') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            } else if (profileShopCategory == 'Topicals') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            } else if (profileShopCategory == 'Vape Pens') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            } else if (profileShopCategory == 'Accessories') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            } else if (profileShopCategory == 'Sales') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Concentrates(
                                        pageTitle: profileShopCategory)),
                              );
                            }
                          },
                          child: ListTile(
                            trailing: const Icon(Icons.chevron_right),
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: Text(
                              profileShopCategory,
                              style: const TextStyle(
                                  fontFamily: 'Poppins', fontSize: 13),
                            ),
                          ),
                        ),
                        Divider(indent: 0, height: 1, color: Colors.grey),
                      ],
                    ),
                  )
              ],
            ),
            Divider(indent: 0, height: 1, color: Colors.grey),
            Column(
              children: [
                for (var menus in profileMenu)
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // ['Account', 'Order History', 'Blog', 'About', 'Log Out']
                          if (menus == 'Account') {
                            var user = _auth.currentUser;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountSummary(user: user!)));
                          } else if (menus == 'Order History') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // builder: (context) => Concentrates()));

                            builder: (context) => OrderHistory(cartTitle: '', cartprice: '5', cartImage: '',)));
                          } else if (menus == 'Blog') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>CartPage()));
                          } else if (menus == 'About') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartPage()));
                          } else {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Concentrates()));
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                title: Center(
                                    child: Text('Log out of Purple Star?',
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Center(
                                      child: Column(
                                        children: [
                                          // Divider(color: Colors.grey),
                                          TextButton(
                                            child: Text('Log out', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18),),
                                            onPressed: () async {
                                              await FirebaseAuth.instance.signOut();
                                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
                                            },
                                          ),
                                          // Divider(color: Colors.grey),
                                          TextButton(
                                            child: Text('Cancel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }
                        },
                        child: ListTile(
                          trailing: const Icon(Icons.chevron_right),
                          title: Text(
                            menus,
                            style: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Divider(indent: 0, height: 1, color: Colors.grey),
                    ],
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
