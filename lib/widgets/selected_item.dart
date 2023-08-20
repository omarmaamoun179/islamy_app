import 'package:flutter/material.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:provider/provider.dart';

class SelectedItem extends StatelessWidget {
  SelectedItem({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingsProvider>(context);
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.3),
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: theme.textTheme.bodyMedium,
          ),
          const Icon(Icons.check),
        ],
      ),
    );
  }
}
