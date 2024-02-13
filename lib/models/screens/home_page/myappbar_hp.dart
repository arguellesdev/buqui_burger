import 'package:flutter/material.dart';
import '../../common_widgets/container_theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black38,
      ),
      title: const Text(
        'Buqui Burgers',
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          wordSpacing: 12,
          letterSpacing: 9,
        ),
      ),
      foregroundColor: Colors.black38,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: const ContainerTheme(),
    );
  }
}

