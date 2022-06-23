import 'package:flutter/material.dart';
import 'package:purplestarmd/widgets/CustomBottomNavigation.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
