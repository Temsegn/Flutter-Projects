import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text("Flutter Advanced Theming")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, Flutter!", style: textTheme.headlineLarge),
            SizedBox(height: 10),
            Text("This is an example of advanced theming.", style: textTheme.bodyLarge),
            SizedBox(height: 20),

            // Elevated Button
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),

            SizedBox(height: 10),

            // Outlined Button
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
            ),

            SizedBox(height: 20),

            // Theme Toggle Button
            Switch(
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (value) => themeProvider.toggleTheme(),
            ),
            Text("Toggle Dark Mode", style: textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
