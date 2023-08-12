import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuku_app/Constants/colors.dart';

import '../modules/items.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.number,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Item number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: NColor, child: Image.asset(number.image)),
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                number.enName,
                style: TextStyle(
                  fontSize: 22,
                  color: TextColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                number.jpName,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              },
              icon: Icon(Icons.play_arrow_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
