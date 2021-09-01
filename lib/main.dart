import 'package:flutter/material.dart';
import 'package:flutter_test_task/pages/coloursPage.dart';
import 'package:flutter_test_task/pages/mainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/colours': (context) => ColoursPage(),
      },
    );
  }
}
