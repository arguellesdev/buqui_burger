import 'package:flutter/material.dart';
import '../../common_widgets/my_themes.dart';
import '../../routes/b_routes.dart';
class MyHomeButtons extends StatelessWidget {
  const MyHomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomBuquiButton(
        icon: Icons.call_end_rounded,
        label: 'Call us',
        onPressed: () {router.go('/contact');}, // Replace with actual call functionality Anya
      ),
        CustomBuquiButton(
          icon: Icons.share_location,
          label: 'Where',
          onPressed: () {}, // Replace with location-related action Anya
        ),
        CustomBuquiButton(
          icon: Icons.share,
          label: 'Share',
          onPressed: () {}, // Replace with sharing action Anya
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
      style: commonButtonStyle, //Remember this is in MyThemes need to refactorize to remember Anya
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(
        label,
        style: TextStyle(
          fontFamily: 'DIN Alternate',
          fontSize: textScaleFactor.scale(12),
        ),
      ),
    );
  }
}
