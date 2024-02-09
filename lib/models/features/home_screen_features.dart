import 'package:flutter/material.dart';
import 'food_menu.dart';

class HomeFeatures extends StatefulWidget {
  final Food food;
  const HomeFeatures({super.key, required this.food});

  @override
  State<HomeFeatures> createState() => _HomeFeaturesState();
}

class _HomeFeaturesState extends State<HomeFeatures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            widget.food.foodImage!,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28)),
                  gradient: LinearGradient(
                    colors: [Color(0xFFF9881F), Color(0xFFFF774C)],
                    stops: [0.2, 0.6],
                  )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
