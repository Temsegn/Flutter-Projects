import 'package:flutter/material.dart';
import 'form/form_page.dart'; // Import the FormPage

void main() async {
  // Initialize Hive (if needed)
  // await Hive.initFlutter();

  // Open a Hive box (if needed)
  // await Hive.openBox('myBox');

  runApp(MyApp()); // Run the app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form App', // App title
      theme: ThemeData(
        primarySwatch: Colors.blue, // App theme
      ),
      home: FormPage(), // Set FormPage as the home page
    );
  }
}