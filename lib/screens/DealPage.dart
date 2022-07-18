import 'package:flutter/material.dart';
import 'package:purplestarmd/widgets/CustomAppBar.dart';

class DealPage extends StatelessWidget {
  const DealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(image: AssetImage('assets/images/deal_page.png')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                        child: Text(
                          'SATURDAY CONCENTRATE DETAS -',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontFamily: 'BebasNeue',
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text('#PURPLESTAR',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontFamily: 'BebasNeue',
                        fontSize: 25,
                      )),
                  Text(
                    'Check all  the great product placeholder text'
                        ' here to keep this up to date with all info for product.'
                        ' Check all the great product placeholder text here to keep this up to date with all info for product',
                  ),
                  Text('see all',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      )),
                  Text(
                    'Flavor items',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    'Kings garden dabs',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    'cold Fire',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    'West coast Framers Santa Barbara',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    "Papa's Select Living Extracts",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
