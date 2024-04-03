import 'package:flutter/material.dart';
import '../../common_widgets/my_launch_urls_method.dart';

class LocationTap extends StatelessWidget {
  const LocationTap({super.key});

  Widget _buildLocationButton(BuildContext context, String title, int index) {
    return TextButton(
      onPressed: () => launchLocationUrls(index),
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Icon(Icons.location_on),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLocationButton(context, 'Navarrete', 0),
                _buildLocationButton(context, 'Kino', 1),
                _buildLocationButton(context, 'MH 69', 2),
                _buildLocationButton(context, 'Morelos', 3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
