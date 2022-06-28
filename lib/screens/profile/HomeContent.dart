import 'package:flutter/material.dart';

import '../../widgets/ShopbyCategory.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 15, 10),
                  child: Text('shop by category', style: TextStyle(fontFamily: 'BebasNeue', fontSize: 28),),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: GridView.count(
                      // shrinkWrap: true,
                      crossAxisCount: 3,
                      // crossAxisSpacing: 2.0,
                      mainAxisSpacing: 8.0,
                      children: List.generate(categories.length, (index) {
                        return Center(
                          child: ShopbyCategory(shopModel: categories[index]),
                        );
                      }
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
