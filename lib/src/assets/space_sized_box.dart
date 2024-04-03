import 'package:flutter/material.dart';

class MyHorizontalSpaceBox extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const MyHorizontalSpaceBox(
      {super.key,
      required this.height,
      required this.width,
      this.color = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.transparent,
    );
  }
}

class MyVerticalSpaceBox extends StatelessWidget {
  final double height;
  final Color color;

  const MyVerticalSpaceBox(
      {super.key, required this.height, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.transparent,
    );
  }
}

class MyFillBox extends StatelessWidget {
  const MyFillBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(55.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            offset: const Offset(4.0, 4.0),
            blurRadius: 12.0,
            spreadRadius: -2.0,
          ),
        ],
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
    );
  }
}
