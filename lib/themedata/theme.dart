import 'package:flutter/material.dart';

// Light Theme Customization
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue, // Primary color of your app
  appBarTheme: AppBarTheme(
    color: Colors.blue, // App bar color
    titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
    headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
  ),
);

// Dark Theme Customization
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple, // Primary color of your app in dark mode
  appBarTheme: AppBarTheme(
    color: Colors.deepPurple, // App bar color
    titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.white70),
    headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.deepPurple,
  ),
);
