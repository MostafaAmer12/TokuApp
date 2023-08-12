import 'package:flutter/material.dart';
import 'package:tuku_app/screens/ColorsScreen.dart';
import 'package:tuku_app/screens/FamilyScreen.dart';
import 'package:tuku_app/screens/NumberScreen.dart';
import 'package:tuku_app/screens/PhasesScreen.dart';
import 'Constants/colors.dart';
import 'components/category_items.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor,
        title: Text('Toku'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [
            Category(
              color: PColor,
              text: 'Numbers',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumberScreen();
                }));
              },
            ),
            Category(
              color: PColor,
              text: 'Family Member',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyScreen();
                }));
              },
            ),
            Category(
              color: PColor,
              text: 'Colors',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorScreen();
                }));
              },
            ),
            Category(
              color: PColor,
              text: 'Phases',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PhraseScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
