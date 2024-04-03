import 'package:flutter/material.dart';
import '../../common_widgets/my_launch_urls_method.dart';

class CallTap extends StatelessWidget {
  const CallTap({super.key});

  Widget _buildLCallButton(BuildContext context, String title, int index) {
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
            const Icon(Icons.call),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLCallButton(context, 'Navarrete', 0),
                _buildLCallButton(context, 'Kino', 1),
                _buildLCallButton(context, 'MH 69', 2),
                _buildLCallButton(context, 'Morelos', 3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
