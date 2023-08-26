import 'package:flutter/material.dart';

import 'package:islamy/constant/theme.dart';
import 'package:islamy/screens/home_screen.dart';
import 'package:islamy/screens/splash_screen.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:islamy/views/hadith_details.dart';
import 'package:islamy/views/hadith_view.dart';
import 'package:islamy/views/quran_details.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) {
      return settingsProvider() ;
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: provider.basicLang,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: provider.currentTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        HadithView.routeName: (context) => const HadithView(),
        HadithDetails.routeName: (context) => HadithDetails(),
        QuranDetails.routeName: (context) => const QuranDetails(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
