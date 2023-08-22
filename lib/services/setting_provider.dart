import 'package:flutter/material.dart';

class settingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;
  Locale basicLang = const Locale('en');
  enableLightTheme() {
    notifyListeners();
    return currentTheme = ThemeMode.light;
  }

  enableDarkTheme() {
    notifyListeners();
    return currentTheme = ThemeMode.dark;
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String changeBackGround() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/dark_home_screen.png'
        : 'assets/images/bg3.png';
    // if (isDark() == true) {
    //   return 'assets/images/dark_home_screen.png';
    // } else {
    //   return 'assets/images/bg3.png';
    // }
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
