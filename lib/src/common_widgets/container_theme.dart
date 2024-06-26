import 'package:buqui_burgers/src/assets/constants.dart';
import 'package:flutter/material.dart';

class ContainerTheme extends StatefulWidget {
  const ContainerTheme({
    super.key,
  });

  @override
  State<ContainerTheme> createState() => _ContainerThemeState();
}

class _ContainerThemeState extends State<ContainerTheme> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(82),
            topRight: Radius.circular(19),
            bottomRight: Radius.circular(82),
            bottomLeft: Radius.circular(19),
          ),
          gradient: LinearGradient(
            colors: [baseColor1, baseColor2],
            stops: [0.2, 0.6],
          )),
    );
  }
}
