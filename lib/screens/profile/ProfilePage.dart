import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';
import 'package:purplestarmd/widgets/CustomBottomNavigation.dart';

import '../../widgets/ShopbyCategory.dart';

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
              child: Text('Hi Pat', style: TextStyle(fontSize: 30, fontFamily: 'BebasNeue'),),
            ),
            Divider(color: Colors.black54, indent: 0, height: 1,),

            // ListTile(
            //   title: Text('Shop', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900, fontFamily: 'Poppins'),),
            //   trailing: Column(
            //     children: [
            //       for(dynamic shopMenu in profileMenu)
            //       Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            //         child: Column(
            //           children: [
            //             InkWell(
            //               onTap: (){
            //                 if(shopMenu == 'Concentrates'){Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage())); }
            //                 else if(shopMenu == 'Concentrates'){Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage())); }
            //               },
            //
            //               child: ListTile(
            //                 trailing: const Icon(Icons.chevron_right),
            //                   title: Text(
            //                     shopMenu,
            //                     style: const TextStyle(
            //                         fontFamily: 'Poppins', fontSize: 13),
            //                   )
            //               ),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}
