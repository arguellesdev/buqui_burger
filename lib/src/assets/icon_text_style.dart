import 'package:flutter/material.dart';

import 'constants.dart';

class IconTextStyle extends StatelessWidget {
  final String text;

  const IconTextStyle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: fontColor3,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: 'Skia'),
    );
  }
}
