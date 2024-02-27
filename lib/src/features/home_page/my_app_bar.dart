import 'package:flutter/material.dart';
import '../../common_widgets/container_theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xFFF7F7FB),
      elevation: 2, flexibleSpace:  const
      ContainerTheme(),
      iconTheme: const IconThemeData(
        color: Colors.black38,
      ),
      title: const Center(
        child: Text(
          'Buqui Burgers',
          style: TextStyle(
            color: Colors.black54,
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



