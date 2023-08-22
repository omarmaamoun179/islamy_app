import 'package:flutter/material.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:islamy/widgets/language_bottom_sheet.dart';
import 'package:islamy/widgets/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<settingsProvider>(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              AppLocalizations.of(context)!.language,
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    color: prov.isDark() ? theme.canvasColor : Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    prov.isEnglish() ? 'English' : 'عربي',
                    style: theme.textTheme.bodyMedium,
                  ),
                  IconButton(
                    onPressed: () {
                      // prov.basicLang;
                      languageBottomSheet(context);
                    },
                    icon: const Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              AppLocalizations.of(context)!.theme,
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    color: prov.isDark() ? theme.canvasColor : Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    prov.isDark()
                        ? AppLocalizations.of(context)!.dark
                        : AppLocalizations.of(context)!.light,
                    style: theme.textTheme.bodyMedium,
                  ),
                  IconButton(
                    onPressed: () {
                      prov.currentTheme;
                      ThemeBottomSheet(context);
                    },
                    icon: const Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ThemeBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) => const ThemeBottomSheetWidget(),
    );
  }

  languageBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheet(),
    );
  }
}
