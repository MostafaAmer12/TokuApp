import 'package:flutter/material.dart';
import 'package:tuku_app/Constants/colors.dart';

import '../components/Build_Items.dart';
import '../modules/items.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({Key? key}) : super(key: key);
  final List<Item> family = const [
    Item(
        sound: 'toku_assets_sounds_family_members_father.wav',
        image: 'assets/images/family_members/family_father.png',
        enName: 'Father',
        jpName: 'Chichioya'),
    Item(
        sound: 'toku_assets_sounds_family_members_mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        enName: 'Mother',
        jpName: 'Hahaoya'),
    Item(
        sound: 'toku_assets_sounds_family_members_grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'Grand Father',
        jpName: 'Ojisan'),
    Item(
        sound: 'toku_assets_sounds_family_members_grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'Grand Mother',
        jpName: 'Sobo'),
    Item(
        sound: 'toku_assets_sounds_family_members_son.wav',
        image: 'assets/images/family_members/family_son.png',
        enName: 'Son',
        jpName: 'Musuko'),
    Item(
        sound: 'toku_assets_sounds_family_members_daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'Daughter',
        jpName: 'Musume'),
    Item(
        sound: 'toku_assets_sounds_family_members_younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'Younger Brother',
        jpName: 'Otouto'),
    Item(
        sound: 'toku_assets_sounds_family_members_younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'Younger Sister',
        jpName: 'Imouto'),
    Item(
        sound: 'toku_assets_sounds_family_members_older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'Older Brother',
        jpName: 'Oniisan'),
    Item(
        sound: 'toku_assets_sounds_family_members_older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'Older Sister',
        jpName: 'Ane'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor,
        title: Text(
          'Family Members',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            number: family[index],
            color: PColor,
            itemType: 'family_members',
          );
        },
        itemCount: family.length,
      ),
    );
  }
}
