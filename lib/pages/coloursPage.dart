import 'dart:math';
import 'package:flutter/material.dart';

class ColoursPage extends StatefulWidget {
  const ColoursPage({Key? key}) : super(key: key);

  @override
  _ColoursPageState createState() => _ColoursPageState();
}

class _ColoursPageState extends State<ColoursPage> {
  Random _random = Random();

  TextStyle _textStyle = TextStyle(
      fontSize: 40,
      color: Colors.black,
      decoration: TextDecoration.none
  );

  Color _color = Color.fromARGB(255,
      255,
      255,
      255
  );

  Color getRandomRGBColor() {
    return Color.fromARGB(
        255,
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256)
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Scaffold(
            backgroundColor: _color,
            body: Center(
              child: Text('Hey there!', style: _textStyle),
            )
        ),
        onTap: () {
          setState(() {
            _color = getRandomRGBColor();
          });
        });
  }
}
