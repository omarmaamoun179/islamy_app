import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class settingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  Locale basicLang = const Locale('en');
  enableLightTheme() async {
    notifyListeners();
   await saveTheme(true);
  }

  enableDarkTheme() async {
   
   await saveTheme(false);
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String changeBackGround() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/dark_home_screen.png'
        : 'assets/images/bg3.png';
  }

  String changeSplahsScreen() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/dark_splash_screen.png'
        : 'assets/images/splash.png';
  }

  changeArabicLang() {
    notifyListeners();
    return basicLang = const Locale('ar');
  }

  changeEngLang() {
    notifyListeners();
    return basicLang = const Locale('en');
  }

  bool isEnglish() {
    if (basicLang == const Locale('en')) {
      return true;
    } else {
      return false;
    }
  }

  saveTheme(bool isDark) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('theme', isDark);
    currentTheme = isDark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool theme = pref.getBool('theme') ?? false;
    currentTheme = theme ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
