import 'package:flutter/material.dart';
import 'package:tuku_app/Constants/colors.dart';

import '../components/Build_Items.dart';
import '../modules/items.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);
  final List<Item> colorS = const [
    Item(
        image: 'assets/images/colors/color_black.png',
        enName: 'Black',
        jpName: 'Kuroguro',
        sound: 'toku_assets_sounds_colors_black.wav'),
    Item(
        image: 'assets/images/colors/color_brown.png',
        enName: 'Brown',
        jpName: 'Chairo',
        sound: 'toku_assets_sounds_colors_brown.wav'),
    Item(
        image: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'Dusty Yellow',
        jpName: 'Hokori ppoi kiiro',
        sound: 'toku_assets_sounds_colors_dusty yellow.wav'),
    Item(
        image: 'assets/images/colors/color_gray.png',
        enName: 'Gray',
        jpName: 'Gurē',
        sound: 'toku_assets_sounds_colors_gray.wav'),
    Item(
        image: 'assets/images/colors/color_green.png',
        enName: 'Green',
        jpName: 'Midori',
        sound: 'toku_assets_sounds_colors_green.wav'),
    Item(
        image: 'assets/images/colors/color_red.png',
        enName: 'Red',
        jpName: 'Aka',
        sound: 'toku_assets_sounds_colors_red.wav'),
    Item(
        image: 'assets/images/colors/color_white.png',
        enName: 'White',
        jpName: 'Shiroi',
        sound: 'toku_assets_sounds_colors_white.wav'),
    Item(
        image: 'assets/images/colors/yellow.png',
        enName: 'Yellow',
        jpName: 'Kiiro',
        sound: 'toku_assets_sounds_colors_yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppBarColor,
          title: Text(
            'Colors',
          ),
        ),
        body: ListView.builder(
          itemCount: colorS.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: colorS[index],
              color: PColor,
              itemType: 'colors',
            );
          },
        ));
  }
}
