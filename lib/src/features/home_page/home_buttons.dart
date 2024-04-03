import 'package:flutter/material.dart';
import '../../routes/b_routes.dart';
import 'home_bottom_icons.dart';

class MyHomeButtons extends StatelessWidget {
  const MyHomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomBuquiButton(
            icon: Icons.call_end_rounded,
            label: 'Call us',
            onPressed: () {
              router.go('/contact');
            }, // Replace with actual call functionality Anya
          ),
          CustomBuquiButton(
            icon: Icons.share_location,
            label: 'Where',
            onPressed: () {}, // Replace with location-related action Anya
          ),
          CustomBuquiButton(
            icon: Icons.share,
            label: 'Share',
            onPressed: () {
              router.pushNamed(AppRoute.contactUs.name);
            }, // Replace with sharing action Anya
          ),
        ],
      ),
    );
  }
}
