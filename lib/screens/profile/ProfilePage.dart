import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';
import 'package:purplestarmd/widgets/CustomBottomNavigation.dart';

import '../../widgets/ShopbyCategory.dart';
import 'Concentrates.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
  var profileMenu = ['Account', 'Order History', 'Blog', 'About'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 0, 5),
              child: Text(
                'Hi Pat',
                style: TextStyle(fontSize: 30, fontFamily: 'BebasNeue'),
              ),
            ),
            Divider(
              color: Colors.black54,
              indent: 0,
              height: 1,
            ),
            ExpansionTile(
              title: Text(
                'Shop',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                for (var profileShopCategory in profileShop)
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 5, 0, 10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            if(profileShopCategory == 'Concentrates'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }else if(profileShopCategory == 'Edibles'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }else if(profileShopCategory == 'Flowers'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }else if(profileShopCategory == 'Prerolls'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }else if(profileShopCategory == 'Tinctures'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }else if(profileShopCategory == 'Topicals'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }else if(profileShopCategory == 'Vape Pens'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }else if(profileShopCategory == 'Accessories'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }else  if(profileShopCategory == 'Sales'){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Concentrates(pageTitle: profileShopCategory)),
                              );
                            }
                          },
                          child: ListTile(
                              trailing: const Icon(Icons.chevron_right),
                              visualDensity:
                              const VisualDensity(horizontal: 0, vertical: -4),
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
                        onTap: (){
                          // ['Account', 'Order History', 'Blog', 'About']
                          if(menus == 'Account') {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Concentrates()));
                          }
                          else if(menus == 'Order History') {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Concentrates()));
                          }
                          else if(menus == 'Blog') {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Concentrates()));
                          }
                          else {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Concentrates()));
                          }
                        },
                        child: ListTile(
                          trailing: const Icon(Icons.chevron_right),
                          title: Text(
                            menus,
                            style:const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Colors.black, fontWeight: FontWeight.bold),
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
