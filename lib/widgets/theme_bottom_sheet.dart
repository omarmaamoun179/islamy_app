import 'package:flutter/material.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:islamy/widgets/selected_item.dart';
import 'package:islamy/widgets/unselcted_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheetWidget extends StatefulWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  State<ThemeBottomSheetWidget> createState() => _ThemeBottomSheetWidgetState();
}

class _ThemeBottomSheetWidgetState extends State<ThemeBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingsProvider>(context);
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        height: 270,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  provider.enableDarkTheme();
                  provider.saveTheme(false);
                },
                child: provider.isDark()
                    ? SelectedItem(text: AppLocalizations.of(context)!.dark)
                    : UnSelctedItem(text: AppLocalizations.of(context)!.dark),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                provider.enableLightTheme();
                provider.saveTheme(true);
              },
              child: !provider.isDark()
                  ? SelectedItem(text: AppLocalizations.of(context)!.light)
                  : UnSelctedItem(text: AppLocalizations.of(context)!.light),
            ),
          ],
        ),
      ),
    );
  }
}
