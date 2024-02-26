import 'package:flutter/material.dart';

import '../../common_widgets/my_themes.dart';
class MyHomeButtons extends StatelessWidget {
  const MyHomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomBuquiButton(
        icon: Icons.call_end_rounded,
        label: 'Call us',
        onPressed: () {}, // Replace with actual call functionality
      ),
        CustomBuquiButton(
          icon: Icons.share_location,
          label: 'Where',
          onPressed: () {}, // Replace with location-related action
        ),
        CustomBuquiButton(
          icon: Icons.share,
          label: 'Share',
          onPressed: () {}, // Replace with sharing action
        ),],
        ),
    );
  }
}

class CustomBuquiButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const CustomBuquiButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = MediaQuery.of(context).textScaler;
    return ElevatedButton.icon(
      style: commonButtonStyle,
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(
        label,
        style: TextStyle(
          fontFamily: 'DIN Alternate',
          fontSize: textScaleFactor.scale(12), // Use responsive text scaling for accessibility
        ),
      ),
    );
  }
}
