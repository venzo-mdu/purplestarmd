import 'package:flutter/material.dart';
import 'package:purplestarmd/screens/DealPage.dart';
import 'package:purplestarmd/screens/profile/CartPage.dart';
import 'package:purplestarmd/screens/profile/YTReview.dart';

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
            Padding(
              padding: EdgeInsets.fromLTRB(25, 15, 15, 0),
              child: Text('purple star deals', style: TextStyle(fontFamily: 'BebasNeue', fontSize: 28),),
            ),

            Container(
              height: 230,
              margin: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DealPage()));
                          },
                          child: Image(image: AssetImage('assets/images/deals-0.png'), height: 200, width: 165, fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage('assets/images/deals-1.png'), height: 200, width: 150, fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage('assets/images/deals-2.png'), height: 200, width: 150, fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage('assets/images/deals-3.png'), height: 200, width: 150, fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage('assets/images/deals-4.png'), height: 200, width: 150, fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(25, 50, 15, 10),
                  child: Text('shop by category',
                    style: TextStyle(fontFamily: 'BebasNeue', fontSize: 28),),
                ),
                SizedBox(
                  height: 400,
                  // height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: GridView.count(
                      crossAxisCount: 3,
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(25, 15, 15, 5),
                  child: Text('Video review', style: TextStyle(fontFamily: 'BebasNeue', fontSize: 28),),
                ),
                SizedBox(
                  height: 330,
                  // height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 280,
                          height: 100,
                          child: Material(
                            // color:Colors.transparent,
                            child: InkWell(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(9, 5, 0, 10),
                                        child: Text(
                                          'JACK HERER BUDDER by KINGS GRRDEN | BEFORE YOU DAB',
                                          style: TextStyle(
                                              fontSize: 13.5,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.25,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      Image(
                                        image: AssetImage('assets/images/yt-review.png'),
                                        height: 170,
                                        width: 225,
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (content) => (YTReview())),
                                  );
                                }),
                          ),
                        ),
                        Container(
                          width: 280,
                          height: 100,
                          child: Material(
                            // color:Colors.transparent,
                            child: InkWell(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(9, 5, 0, 10),
                                        child: Text(
                                          'JACK HERER BUDDER by KINGS GRRDEN | BEFORE YOU DAB',
                                          style: TextStyle(
                                              fontSize: 13.5,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.25,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      Image(
                                        image: AssetImage('assets/images/yt-review.png'),
                                        height: 170,
                                        width: 225,
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (content) => (YTReview())),
                                  );
                                }),
                          ),
                        ),
                        Container(
                          width: 280,
                          height: 100,
                          child: Material(
                            // color:Colors.transparent,
                            child: InkWell(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(9, 5, 0, 10),
                                        child: Text(
                                          'JACK HERER BUDDER by KINGS GRRDEN | BEFORE YOU DAB',
                                          style: TextStyle(
                                              fontSize: 13.5,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.25,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      Image(
                                        image: AssetImage('assets/images/yt-review.png'),
                                        height: 170,
                                        width: 225,
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (content) => (YTReview())),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
