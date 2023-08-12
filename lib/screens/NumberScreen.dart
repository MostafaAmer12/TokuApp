import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tuku_app/Constants/colors.dart';

import '../components/Build_Items.dart';
import '../modules/items.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/numbers/number_one.png',
        enName: 'One',
        jpName: 'Ichi',
        sound: 'toku_assets_sounds_numbers_number_one_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        enName: 'Two',
        jpName: 'Ni',
        sound: 'toku_assets_sounds_numbers_number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        enName: 'Three',
        jpName: 'San',
        sound: 'toku_assets_sounds_numbers_number_three_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        enName: 'Four',
        jpName: 'Yon',
        sound: 'toku_assets_sounds_numbers_number_four_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        enName: 'Five',
        jpName: 'Go',
        sound: 'toku_assets_sounds_numbers_number_five_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        enName: 'Six',
        jpName: 'Roku',
        sound: 'toku_assets_sounds_numbers_number_six_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'Seven',
        jpName: 'Shichi',
        sound: 'toku_assets_sounds_numbers_number_seven_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'Eight',
        jpName: 'Hachi',
        sound: 'toku_assets_sounds_numbers_number_eight_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'Nine',
        jpName: 'Ku',
        sound: 'toku_assets_sounds_numbers_number_nine_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'Ten',
        jpName: 'Juu',
        sound: 'toku_assets_sounds_numbers_number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppBarColor,
          title: Text(
            'Numbers',
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: numbers[index],
              color: PColor,
              itemType: 'numbers',
            );
          },
        ));
  }
}
