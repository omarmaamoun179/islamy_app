import 'package:flutter/material.dart';
import 'package:islamy/views/quran_details.dart';

class SuraNameWidget extends StatelessWidget {
  const SuraNameWidget(
      {super.key, required this.suraName, required this.suraNum});
  final String suraName;
  final int suraNum;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, QuranDetails.routeName,
            arguments: SuraDetails(suraName: suraName, suraNum: suraNum));
      },
      child: IntrinsicHeight(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
                suraName,
              ),
            ),
            VerticalDivider(
              thickness: 2,
              color: theme.dividerColor,
            ),
            Expanded(
                child: Text(
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    '$suraNum')),
          ],
        ),
      ),
    );
  }
}

class SuraDetails {
  SuraDetails({required this.suraName, required this.suraNum});
  String suraName;
  int suraNum;
}
