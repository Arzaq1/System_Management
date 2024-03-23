import 'package:flutter/material.dart';

class MainTheme {
  static ThemeData mainTheme = ThemeData(
      textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(fontSize: 15, color: Colors.black),
  ));
}
