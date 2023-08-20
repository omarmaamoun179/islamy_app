import 'package:flutter/material.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:islamy/widgets/selected_item.dart';
import 'package:islamy/widgets/unselcted_item.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingsProvider>(context);
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
                  provider.changeEngLang();
                },
                child: provider.isEnglish()
                    ? SelectedItem(
                        text: provider.isEnglish() ? 'English ' : 'عربي',
                      )
                    : UnSelctedItem(text: 'english'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                provider.changeArabicLang();
              },
              child: !provider.isEnglish()
                  ? SelectedItem(text: !provider.isEnglish() ? 'عربي ' : 'عربي')
                  : UnSelctedItem(text: 'Arabic'),
            ),
          ],
        ),
      ),
    );
  }
}
