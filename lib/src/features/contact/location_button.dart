import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key, required this.onPressed, this.tooltip});
  final VoidCallback onPressed;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => onPressed,
        icon: const Icon(Icons.location_on_rounded),
        color: const Color(0xFFFF774C),
        tooltip: tooltip);
  }
}
