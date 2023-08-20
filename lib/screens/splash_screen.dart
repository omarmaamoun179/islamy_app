import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamy/constant/theme.dart';
import 'package:islamy/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppTheme.themeMode == ThemeMode.dark
                ? 'assets/images/splash_dark.png'
                : 'assets/images/splash.png'),
            fit: BoxFit.fill),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
