import 'package:flutter/material.dart';
import '../assets/constants.dart';
import 'container_theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;

  const MyAppBar({super.key, this.leading});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundC1,
      elevation: 0,
      flexibleSpace: const ContainerTheme(),
      iconTheme: const IconThemeData(
        color: fontColor3,
      ),
      leading: leading,
      title: const Center(
        child: Text(
          'Buqui Burgers',
          style: TextStyle(
            color: fontColor2,
            fontWeight: FontWeight.bold,
            wordSpacing: 9,
            letterSpacing: 2,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
