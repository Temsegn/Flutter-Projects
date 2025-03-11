import 'package:flutter/material.dart';
import 'package:flutter_project/provider2/home_page.dart';
import 'form/form_page.dart'; // Import the FormPage
import 'package:provider/provider.dart';
import 'provider2/list_provider.dart';

void main() async {
  // Initialize Hive (if needed)
  // await Hive.initFlutter();

  // Open a Hive box (if needed)
  // await Hive.openBox('myBox');

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ListProvider())],
      child: MyApp(),
    ),
  ); // Run the app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form App', // App title
      theme: ThemeData( 
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Enable dark mode
      ),
      themeMode: ThemeMode.system,
      home: HomePage(), // Set FormPage as the home page
    );
  }
}
