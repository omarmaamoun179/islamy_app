import 'package:flutter/material.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:provider/provider.dart';

import 'sura_name_num_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranWidget extends StatelessWidget {
  const QuranWidget({
    super.key,
    required this.theme,
    required this.SuraName,
  });

  final ThemeData theme;
  final List<String> SuraName;

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<settingsProvider>(context);
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/icon_quran.png',
            height: 300,
            width: 100,
          ),
          Divider(
            color: theme.dividerColor,
            endIndent: 0,
            height: 0,
            thickness: 2,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(AppLocalizations.of(context)!.suraname,
                      style: theme.textTheme.titleMedium),
                ),
                Padding(
                  padding: prov.isEnglish()
                      ? const EdgeInsets.only(right: 19)
                      : const EdgeInsets.only(left: 13.5),
                  child: VerticalDivider(
                    endIndent: 0,
                    indent: 0,
                    width: 0,
                    thickness: 2,
                    color: theme.dividerColor,
                  ),
                ),
                Text(AppLocalizations.of(context)!.surannum,
                    style: theme.textTheme.titleMedium),
              ],
            ),
          ),
          Divider(
            indent: 0,
            endIndent: 0,
            height: 5,
            color: theme.dividerColor,
            thickness: 2,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: SuraName.length,
                itemBuilder: (BuildContext context, index) {
                  return SuraNameWidget(
                      suraName: SuraName[index], suraNum: index + 1);
                }),
          ),
        ],
      ),
    );
  }
}
