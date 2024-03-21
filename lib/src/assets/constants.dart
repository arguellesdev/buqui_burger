import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const MySizedBox(
      {super.key, this.width = 50, this.height = 50, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2.0,
      height: 4.0,
      color: Colors.transparent,
    );
  }
}
