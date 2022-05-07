import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  final Future<SharedPreferences> _sharedPreferences = SharedPreferences.getInstance();
  String _currentTheme = 'system';

  ThemeMode get themeMode {
    if (_currentTheme == 'light') {
      return ThemeMode.light;
    } else if (_currentTheme == 'dark') {
      return ThemeMode.dark;
    } else {
      ThemeMode.system;
    }
    return ThemeMode.system;
  }

  changeTheme(String theme) async {
    final prefs = await _sharedPreferences;
    await prefs.setString('theme', theme);

    _currentTheme = theme;
    notifyListeners();
  }

  initialized() async {
    final prefs = await _sharedPreferences;
    _currentTheme = prefs.getString('theme') ?? 'system';
    notifyListeners();
  }
}
