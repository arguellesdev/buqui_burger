import 'package:flutter/material.dart';
import '../../common_widgets/my_launch_urls_method.dart';

class CallTap extends StatelessWidget {
  const CallTap({super.key});

  Widget _buildCallButton(BuildContext context, String title, int index) {
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
            const Icon(Icons.phone_callback),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCallButton(context, 'Navarrete', 0),
                _buildCallButton(context, 'Kino', 1),
                _buildCallButton(context, 'MH 69', 2),
                _buildCallButton(context, 'Morelos', 3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
