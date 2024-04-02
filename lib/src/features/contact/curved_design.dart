import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../assets/constants.dart';
import '../../common_widgets/container_theme.dart';
import '../../mocks/food_mocks.dart';
import '../../routes/b_routes.dart';
import 'contact_call.dart';
import 'contact_location.dart';

class ContactNavigation extends StatefulWidget {
  const ContactNavigation({super.key});

  @override
  State<ContactNavigation> createState() => _ContactNavigationState();
}

class _ContactNavigationState extends State<ContactNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const ContainerTheme(),
        title: const Text('Contact us'),
        titleSpacing: 1.2,
        titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.fade),
        leading: IconButton(
          onPressed: () => GoRouter.of(context).go('/'),
          icon: const Icon(Icons.home),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 21, left: 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IndexedStack(
              index: _selectedIndex,
              children: const [
                LocationTap(),
                PhoneCallTap(),
              ],
            ),
            const SizedBox(height: 20),
            Image.network(
              imageUrls[4],
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: _goToHomeScreen,
        elevation: 1,
        backgroundColor: iColor2,
        child: const Icon(Icons.travel_explore, color: Colors.white70),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: baseColor2,
        animationDuration: const Duration(milliseconds: 500),
        items: const [
          Icon(Icons.location_on),
          Icon(Icons.call),
        ],
        index: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _goToHomeScreen() {
    context.pushNamed(AppRoute.taproom.name);
  }
}
