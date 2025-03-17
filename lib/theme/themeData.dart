import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
    labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.blue),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Colors.blue, padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.blue, side: BorderSide(color: Colors.blue, width: 2),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.red,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
    labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.red),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Colors.red, padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.red, side: BorderSide(color: Colors.red, width: 2),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ),
);
