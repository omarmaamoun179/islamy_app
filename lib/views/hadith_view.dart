import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/views/hadith_details.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});
  static String routeName = 'hadithView';

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<hadithDetails> numberHadithList = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (numberHadithList.isEmpty) {
      readHadith();
    }

    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/images/head_of_hadith.png'),
        Divider(
          color: theme.dividerColor,
          thickness: 1.7,
        ),
        Text('الأحاديث', style: theme.textTheme.titleMedium),
        Divider(
          color: theme.dividerColor,
          thickness: 1.7,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: theme.dividerColor,
                indent: 40,
                endIndent: 40,
              );
            },
            itemCount: numberHadithList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadithDetails.routeName,
                      arguments: numberHadithList[index]);
                },
                child: Text(
                    textAlign: TextAlign.center,
                    numberHadithList[index].title,
                    style: theme.textTheme.titleMedium),
              );
            },
          ),
        ),
      ],
    );
  }

  readHadith() async {
    List<hadithDetails> hadithContet = [];
    String txt = await rootBundle.loadString('assets/fhadith/ahadeth.txt');
    List<String> numberHadith = txt.split('#');

    for (int i = 0; i < numberHadith.length; i++) {
      String singleHadith = numberHadith[i].trim();
      int IndexofFirstLine = singleHadith.indexOf('\n');
      String title = singleHadith.substring(0, IndexofFirstLine);
      String content = singleHadith.substring(IndexofFirstLine + 1);
      hadithDetails details = hadithDetails(content, title);
      hadithContet.add(details);
    }
    numberHadithList = hadithContet;

    setState(() {});
  }
}

class hadithDetails {
  String content;
  String title;
  hadithDetails(this.content, this.title);
}
