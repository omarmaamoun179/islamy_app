import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.fun,
      required this.text,
      required this.FontFamily});
  final VoidCallback fun;
  final String text;
  final String FontFamily;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: fun,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 80),
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(15),
            right: Radius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: FontFamily,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
