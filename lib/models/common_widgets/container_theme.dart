import 'package:flutter/material.dart';

class ContainerTheme extends StatefulWidget {
  const ContainerTheme({super.key});

  @override
  State<ContainerTheme> createState() => _ContainerThemeState();
}

class _ContainerThemeState extends State<ContainerTheme> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xFFF9881F), Color(0xFFFF774C)],
        stops: [0.2, 0.6],
      )),
    );
  }
}
