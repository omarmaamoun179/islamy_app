import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage(
      {super.key, required this.assetimage, this.CustomWidget});
  final String assetimage;
  final Widget? CustomWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetimage),
          fit: BoxFit.fill,
        ),
      ),
      child: CustomWidget,
    );
  }
}
