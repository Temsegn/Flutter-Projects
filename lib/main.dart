import 'package:flutter/material.dart';
import 'rest_api/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

































// import 'package:flutter/material.dart';
// import 'package:flutter_project/provider2/home_page.dart';
// import 'package:flutter_project/themedata/theme.dart';
// import 'form/form_page.dart'; // Import the FormPage
// import 'package:provider/provider.dart';
// import 'provider2/list_provider.dart';
// import 'themedata/theme_provider.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => ListProvider()),
//         ChangeNotifierProvider(create: (_) => ThemeProvider()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeProvider>(
//       builder: (context, themeProvider, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Flutter Form App',
//           theme: lightTheme, 
//           darkTheme: darkTheme,
//           themeMode: themeProvider.themeMode, // ✅ Uses Provider
//           home: HomePage(),
//         );
//       },
//     );
//   }
// }
