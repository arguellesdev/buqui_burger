import 'package:flutter/material.dart';

class MyTextStyle {
  static const TextStyle appBarTitle = TextStyle(
    color: Colors.white60,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
}

final commonButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.black26,
  foregroundColor: Colors.amber,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);