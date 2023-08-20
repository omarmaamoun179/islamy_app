import 'package:flutter/material.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:islamy/views/hadith_view.dart';
import 'package:islamy/widgets/backgrounimage.dart';
import 'package:provider/provider.dart';

class HadithDetails extends StatelessWidget {
  HadithDetails({super.key});
  static String routeName = 'hadithDetails';
  List<HadithDetails> allHadith = [];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as hadithDetails;
    var provider = Provider.of<settingsProvider>(context);
    return BackGroundImage(
      assetimage: provider.changeBackGround(),
      CustomWidget: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  args.title,
                  style: theme.textTheme.titleLarge,
                ),
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
              indent: 33,
              endIndent: 33,
              color: theme.primaryColor,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    textDirection: TextDirection.rtl,
                    args.content,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
