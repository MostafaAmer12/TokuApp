import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.ontap});

  Color? color;
  String? text;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        alignment: Alignment.centerLeft,
        width: 60,
        height: 60,
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
