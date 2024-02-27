import 'package:flutter/material.dart';

class ContainerTheme extends StatefulWidget {
  const ContainerTheme(
      {super.key,});

  @override
  State<ContainerTheme> createState() => _ContainerThemeState();
}

class _ContainerThemeState extends State<ContainerTheme> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(64),
            topRight: Radius.circular(28),
            bottomRight: Radius.circular(64),
            bottomLeft: Radius.circular(28)
            
          ),
          gradient: LinearGradient(
        colors: [Color(0xFFF9881F), Color(0xFFFF774C)],
        stops: [0.2, 0.6],
      )),
    );
  }
}
