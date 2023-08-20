import 'package:flutter/material.dart';

class SebhaCounter extends StatelessWidget {
  const SebhaCounter({super.key, required this.txt1});
  final String txt1;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: theme.primaryColor.withOpacity(.4),
          border: Border.all(),
          borderRadius: BorderRadius.circular(15)),
      height: 72,
      margin: const EdgeInsets.symmetric(horizontal: 170),
      child: Text(
        '$txt1',
        style:  theme.textTheme.titleMedium
      ),
    );
  }
}
