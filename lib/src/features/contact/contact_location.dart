import 'package:flutter/material.dart';
import '../../assets/icon_text_style.dart';
import '../../assets/space_sized_box.dart';
import '../../common_widgets/my_launch_urls_method.dart';

class LocationTap extends StatelessWidget {
  const LocationTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ...locationUrl.asMap().
              Column(
                children: [
                  IconButton(
                    onPressed: () => launchLocationUrls(0),
                    icon: const Icon(Icons.location_on_rounded),
                    color: const Color(0xFFFF774C),
                    tooltip: 'Navarrete',
                  ),
                  const MyVerticalSpaceBox(height: 4.0),
                  const IconTextStyle(text: 'Navarrete')
                ],
              ),
              const MyHorizontalSpaceBox(
                height: 100,
                width: 4,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () => launchLocationUrls(1),
                    icon: const Icon(Icons.location_on_rounded),
                    color: const Color(0xFFFF774C),
                    tooltip: 'Kino',
                  ),
                  const MyVerticalSpaceBox(height: 4.0),
                  const IconTextStyle(text: 'Kino')
                ],
              ),
              const MyHorizontalSpaceBox(
                height: 100,
                width: 4,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () => launchLocationUrls(2),
                      icon: const Icon(Icons.location_on_rounded),
                      color: const Color(0xFFFF774C),
                      tooltip: 'MH69'),
                  const MyVerticalSpaceBox(height: 4.0),
                  const IconTextStyle(text: 'MH69')
                ],
              ),
              const MyHorizontalSpaceBox(
                height: 100,
                width: 4,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () => launchLocationUrls(3),
                      icon: const Icon(Icons.location_on_rounded),
                      color: const Color(0xFFFF774C),
                      tooltip: 'Morelos'),
                  const MyVerticalSpaceBox(height: 3.0),
                  const IconTextStyle(text: 'Morelos')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
