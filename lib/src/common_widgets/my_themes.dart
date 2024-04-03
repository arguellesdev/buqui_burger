import 'package:flutter/material.dart';

import '../assets/constants.dart';

class MyTextStyle {
  static const TextStyle appBarTitle = TextStyle(
    color: fontColor3,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
}

final commonButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: baseColor1,
  foregroundColor: foregroundC1,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);
