import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class settingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  Locale basicLang = const Locale('en');
  enableLightTheme() async {
    notifyListeners();
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('theme', false);
    return currentTheme = ThemeMode.light;
  }

  enableDarkTheme() async {
    notifyListeners();
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('theme', true);

    return currentTheme = ThemeMode.dark;
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

 

}
