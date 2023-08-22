import 'package:flutter/material.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:islamy/views/hadith_view.dart';
import 'package:islamy/views/quran_view.dart';
import 'package:islamy/views/radio_view.dart';
import 'package:islamy/views/sebha_view.dart';
import 'package:islamy/views/setting_view.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = 'Home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;
  List<Widget> screens = [
    QuranView(),
    const HadithView(),
    const SebhaView(),
    const RadioView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingsProvider>(context);
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              provider.changeBackGround(),
              // theme == ThemeMode.dark
              //     ? 'assets/images/dark_home_screen.png'
              //     : 'assets/images/bg3.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islamy),
        ),
        body: screens[selectIndex],
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 25.5,
            unselectedFontSize: 15,
            currentIndex: selectIndex,
            onTap: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                      AssetImage('assets/images/moshaf_gold.png')),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage('assets/images/Path 1.png')),
                  label: AppLocalizations.of(context)!.hadith),
              BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.sebha,
                icon:
                    const ImageIcon(AssetImage('assets/images/sebha_blue.png')),
              ),
              BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.radio,
                  icon: const ImageIcon(
                      AssetImage('assets/images/radio_blue.png'))),
              BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.settings,
                icon: const Icon(Icons.settings),
              ),
            ]),
      ),
    );
  }
}
