import 'package:flutter/material.dart';
import 'package:tuku_app/Constants/colors.dart';
import '../components/Phrase_Item.dart';
import '../modules/phrase.dart';

class PhraseScreen extends StatelessWidget {
  const PhraseScreen({Key? key}) : super(key: key);
  final List<Phrase> phrases = const [
    Phrase(
        sound: 'toku_assets_sounds_phrases_are_you_coming.wav',
        enName: 'Are you coming?',
        jpName: 'Kimasu ka'),
    Phrase(
        sound: 'toku_assets_sounds_phrases_yes_im_coming.wav',
        enName: 'yes, I am coming',
        jpName: 'Hai, kimasu'),
    Phrase(
        sound: 'toku_assets_sounds_phrases_how_are_you_feeling.wav',
        enName: 'How are you feeling?',
        jpName: 'Go kibun wa ikagadesu ka'),
    Phrase(
        sound: 'toku_assets_sounds_phrases_i_love_anime.wav',
        enName: 'I love anime',
        jpName: "Watashi wa anime ga daisukidesu"),
    Phrase(
        sound: 'toku_assets_sounds_phrases_i_love_programming.wav',
        enName: 'I love Programming',
        jpName: 'Watashi wa Puroguramingu ga daisukidesu'),
    Phrase(
        sound: 'toku_assets_sounds_phrases_what_is_your_name.wav',
        enName: 'What is your name?',
        jpName: 'Namae wa nandesu ka'),
    Phrase(
        sound: 'toku_assets_sounds_phrases_where_are_you_going.wav',
        enName: 'Where are you going?',
        jpName: 'Doko ni iku no'),
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
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return phraseItem(
              phrase: phrases[index],
              color: PColor,
              itemType: 'phrases',
            );
          },
        ));
  }
}
