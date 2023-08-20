import 'package:flutter/material.dart';

class UnSelctedItem extends StatelessWidget {
   

  String text;

  UnSelctedItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(text), ],
      ),
    );
  }
}
