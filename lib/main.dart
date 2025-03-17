import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/home_pag.dart';
import 'theme/theme.dart';
import 'theme/themeData.dart';
 import 'package:hive_flutter/hive_flutter.dart';

void main() async {
   await Hive.initFlutter();
   await Hive.openBox('themebox');
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      home: HomePage(),
    );
  }
}
