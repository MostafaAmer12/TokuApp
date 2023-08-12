import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(TukuApp());
}

class TukuApp extends StatelessWidget {
  const TukuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
