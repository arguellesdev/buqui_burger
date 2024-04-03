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

  Widget _buildContactWidget() {
    return Container(
      height: 200.0,
      alignment: Alignment.center,
      child: _selectedIndex == 0 ? const LocationTap() : const CallTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const ContainerTheme(),
        title: const Text(
          'Contact us',
        ),
        titleSpacing: 1.2,
        titleTextStyle: const TextStyle(
            color: fontColor1,
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
            _buildContactWidget(),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: baseColor2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Buqui\'s Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_rounded),
            label: 'Call us',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white54,
        onTap: _onItemTapped,
      ),
    );
  }

  void _goToHomeScreen() {
    context.pushNamed(AppRoute.taproom.name);
  }
}
