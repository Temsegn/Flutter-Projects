import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light; // Default is light theme

  ThemeMode get themeMode => _themeMode; // Getter for themeMode

  // Toggle between light and dark themes
  void toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light; // Corrected the logic
    notifyListeners(); // Notify listeners to update the UI
  }
}
