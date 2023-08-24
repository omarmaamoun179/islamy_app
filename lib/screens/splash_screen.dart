import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamy/screens/home_screen.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<settingsProvider>(context);
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(prov.isDark()
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
