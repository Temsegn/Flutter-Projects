import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemeProvider with ChangeNotifier {
  Box _themebox = Hive.box('themebox');
  bool _isDark;

  ThemeProvider() : _isDark = Hive.box('themebox').get("theme", defaultValue: false);

  ThemeMode get themeMode => _isDark ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDark = !_isDark;
    _themebox.put('theme', _isDark);
    notifyListeners();
  }
}
