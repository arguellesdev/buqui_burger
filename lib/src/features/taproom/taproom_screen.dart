import 'dart:async';
import 'package:flutter/material.dart';
import 'package:buqui_burgers/src/common_widgets/container_theme.dart';

class MyTapRoomScreen extends StatefulWidget {
  const MyTapRoomScreen({super.key});

  @override
  State<MyTapRoomScreen> createState() => _MyTapRoomScreenState();
}

class _MyTapRoomScreenState extends State<MyTapRoomScreen> {
  int _imageIndex = 0;
  final List<String> _animatedImageUrls = [
    'https://lumari.mx/wp-content/uploads/2019/07/BBN_08.jpg',
    'https://lumari.mx/wp-content/uploads/2019/07/BBN_14.jpg',
    'https://gourmetdemexico.com.mx/wp-content/uploads/2018/04/cerveceri%CC%81as-sonora.jpg',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      setState(() {
        _imageIndex = (_imageIndex + 1) % _animatedImageUrls.length;
      });
    });
  }

  Widget _buildTransition(Widget child, Animation<double> animation) {
    final offsetAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(animation);
    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: const ContainerTheme(),
          title: const Text('Tap Rooms'),
        ),
        body: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 541),
            reverseDuration: const Duration(milliseconds: 541),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            transitionBuilder: _buildTransition,
            child: Image.network(
              _animatedImageUrls[_imageIndex],
              key: ValueKey<int>(_imageIndex),
            ),
          ),
        ),
      ),
    );
  }
}
