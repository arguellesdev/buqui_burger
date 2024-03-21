import 'dart:async';
import 'package:flutter/material.dart';
import 'package:buqui_burgers/src/common_widgets/container_theme.dart';
import 'package:buqui_burgers/src/mocks/food_mocks.dart';

class MyTapRoomScreen extends StatefulWidget {
  const MyTapRoomScreen({super.key});

  @override
  State<MyTapRoomScreen> createState() => _MyTapRoomScreenState();
}

class _MyTapRoomScreenState extends State<MyTapRoomScreen> {
  int _imageIndex = 0;
  late Timer _timer;
  final List<Map<String, String>> _animatedImageUrls = taproomImages;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
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
            child: _animatedImageUrls.isNotEmpty &&
                    _animatedImageUrls[_imageIndex]["taproomImage"] != null
                ? Image.network(
                    _animatedImageUrls[_imageIndex]["taproomImage"]!,
                    key: ValueKey<int>(_imageIndex),
                  )
                : const SizedBox(),
          ),
        ),
      ),
    );
  }
}
