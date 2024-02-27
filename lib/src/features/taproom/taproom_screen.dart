import 'package:buqui_burgers/src/common_widgets/container_theme.dart';
import 'package:flutter/material.dart';

class MyTapRoomScreen extends StatelessWidget {
  const MyTapRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: const ContainerTheme(),
          title: const Text('Tap Rooms'),
        ),
        body: Column(
          children: [
            Image.network(
              'https://lumari.mx/wp-content/uploads/2019/07/BBN_08.jpg',
              fit: BoxFit.cover,
            ),
            const Text('Under construction'),
          ],
        ),
      ),
    );
  }
}
