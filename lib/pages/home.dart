import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Random _random = Random();
  Color _color = Color.fromARGB(255, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: _color,
        child: Center(
          child: Text('Hey there!'),
        ),
      ),
      onTap: () {
        setState(() {
          _color = getRandomRGBColor();
        });
      },
    );
  }

  Color getRandomRGBColor() {
    return Color.fromARGB(
        255,
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256)
    );
  }
}
