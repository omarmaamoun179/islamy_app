import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/widgets/backgrounimage.dart';
import 'package:islamy/widgets/sura_name_num_widget.dart';
import 'package:provider/provider.dart';

import '../services/setting_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranDetails extends StatefulWidget {
  const QuranDetails({super.key});
  static String routeName = 'quranDetails';

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var provider = Provider.of<settingsProvider>(context);
    if (verses.isEmpty) {
      getQuran(args.suraNum);
    }
    return BackGroundImage(
      assetimage: provider.changeBackGround(),
      CustomWidget: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.islamy,
            style: theme.textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: provider.isDark() ? theme.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      args.suraName,
                      style: theme.textTheme.titleMedium),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_fill_sharp,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 3,
                indent: 55,
                endIndent: 55,
                color:theme.dividerColor,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: theme.dividerColor,
                      indent: 40,
                      endIndent: 0,
                      thickness: 1.3,
                    );
                  },
                  itemCount: verses.length,
                  itemBuilder: (context, index) {
                    return Text(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        '${verses[index]}' ' ${index + 1} ',
                        style: theme.textTheme.bodyMedium);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void getQuran(int Index) async {
    String text = await rootBundle.loadString('assets/fquran/$Index.txt');
    List<String> Suralines = text.split('\n');

    verses = Suralines;
    setState(() {});
  }
}
