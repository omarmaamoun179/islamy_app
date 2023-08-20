import 'package:flutter/material.dart';
import 'package:islamy/widgets/custom_button.dart';
import 'package:islamy/widgets/sebha_counter.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int txt = 0;
  int txt1 = 0;
  int txt2 = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/Group 8.png',
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              'عدد التسبيحات',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            SebhaCounter(txt1: txt.toString()),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                fun: () {
                  setState(() {
                    txt++;
                  });
                },
                text: 'سبحان الله',
                FontFamily: 'ElMessiri'),
            const SizedBox(
              height: 15,
            ),
            SebhaCounter(txt1: txt1.toString()),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                fun: () {
                  setState(() {
                    txt1++;
                  });
                },
                text: 'الحمد للله',
                FontFamily: 'ElMessiri'),
            const SizedBox(
              height: 15,
            ),
            SebhaCounter(txt1: txt2.toString()),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                fun: () {
                  setState(() {
                    txt2++;
                  });
                },
                text: 'الله أكبر',
                FontFamily: 'ElMessiri')
          ],
        ),
      ),
    );
  }
}
