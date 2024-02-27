import 'package:flutter/material.dart';

class MyTextStyle {
  static const TextStyle appBarTitle = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
}

final commonButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.cyan,
  foregroundColor: Colors.white54,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);