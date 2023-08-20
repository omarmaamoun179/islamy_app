import 'package:flutter/material.dart';

class AppTheme {
  static ThemeMode themeMode = ThemeMode.light;
  static Color DarkColor = const Color(0xff0E2F44);
  static ThemeData LightTheme = ThemeData(
    dividerColor: Color(0xffB7935F),
    iconTheme: IconThemeData(
      color: Color(0xffB7935F) ,
    ),
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: Colors.grey.shade400),
    primaryColor: const Color(0xffB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 30,
        color: Color(0xff141A2E),
      ),
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
      bodyMedium: TextStyle(color: Color(0xff242424), fontSize: 20),
      titleLarge: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    ),
  );
  static ThemeData DarkTheme = ThemeData(
    dividerColor: Color(0xffFACC1D),
    iconTheme: IconThemeData(
      color: Color(0xffFACC1D) ,
    ),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Color(0xff1C2746)),
    canvasColor: const Color(0xffFACC1D),
    primaryColor: const Color(0xff141A2E),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141A2E),
      type: BottomNavigationBarType.fixed,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 30, color: Color(0xffFACC1D)),
      selectedItemColor: Color(0xffFACC1D),
      selectedLabelStyle: TextStyle(fontSize: 20, color: Color(0xffFACC1D)),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      bodyMedium: TextStyle(color: Color(0xffFACC1D), fontSize: 20),
      titleLarge: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
    ),
  );
}
