import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuku_app/Constants/colors.dart';

import '../modules/phrase.dart';

class phraseItem extends StatelessWidget {
  const phraseItem(
      {Key? key,
      required this.phrase,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Phrase phrase;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                phrase.enName,
                style: TextStyle(
                  fontSize: 20,
                  color: TextColor,
                ),
              ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),

              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(phrase.sound);
              },
              icon: Icon(Icons.play_arrow_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
