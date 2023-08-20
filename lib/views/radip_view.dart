import 'package:flutter/material.dart';
import 'package:islamy/services/setting_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<settingsProvider>(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio.png'),
          const Text(
            'إذاعة القرءان الكريم ',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.skip_previous_rounded),
                color: theme.iconTheme.color,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow),
                color: theme.iconTheme.color,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.skip_next),
                color: theme.iconTheme.color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
