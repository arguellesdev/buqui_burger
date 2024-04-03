import 'package:flutter/material.dart';

import '../../assets/constants.dart';
import '../../common_widgets/my_themes.dart';

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
      icon: Icon(
        icon,
        color: foregroundC2,
      ),
      label: Text(
        label,
        style: TextStyle(
          fontFamily: 'Futura',
          fontWeight: FontWeight.bold,
          fontSize: textScaleFactor.scale(12),
          color: fontColor4,
        ),
      ),
    );
  }
}
