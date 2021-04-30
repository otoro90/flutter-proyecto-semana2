import 'package:flutter/material.dart';
import 'package:imc/page/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white24,
        canvasColor: Color(0x93090E21),
      ),
      home: MyHomePage(title: 'Calculadora IMC'),
    );
  }
}
