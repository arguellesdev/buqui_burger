import 'package:flutter/material.dart';
import '../../assets/space_sized_box.dart';
import '../../common_widgets/my_launch_urls_method.dart';

class PhoneCallTap extends StatelessWidget {
  const PhoneCallTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ...locationUrl.asMap().
              IconButton(
                onPressed: () => launchLocationUrls(0),
                icon: const Icon(
                  Icons.phone_enabled,
                ),
                color: const Color(0xFFFF774C),
                tooltip: 'Navarrete',
              ),
              const MyHorizontalSpaceBox(
                height: 100,
                width: 4,
              ),
              IconButton(
                onPressed: () => launchLocationUrls(1),
                icon: const Icon(Icons.phone_enabled),
                color: Colors.deepPurple,
                tooltip: 'Kino',
              ),
              const MyHorizontalSpaceBox(
                height: 100,
                width: 4,
              ),
              IconButton(
                  onPressed: () => launchLocationUrls(2),
                  icon: const Icon(Icons.phone_enabled),
                  color: const Color(0xFFFF774C),
                  tooltip: 'MH69'),
              const MyHorizontalSpaceBox(
                height: 100,
                width: 4,
              ),
              IconButton(
                  onPressed: () => launchLocationUrls(3),
                  icon: const Icon(Icons.phone_enabled),
                  color: Colors.deepPurple,
                  tooltip: 'Morelos'),
            ],
          ),
        ],
      ),
    );
  }
}
