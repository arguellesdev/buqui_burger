import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../assets/space_sized_box.dart';
import '../../common_widgets/container_theme.dart';
import '../../common_widgets/my_launch_urls_method.dart';
import '../../mocks/food_mocks.dart';
import '../../routes/b_routes.dart';

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
        backgroundColor: const Color(0xFFF7F7FB),
        foregroundColor: Colors.white,
        title: const Text('Contact us'),
        titleSpacing: 1.2,
        titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.fade,
            color: Colors.white),
        leading: IconButton(
          onPressed: () => GoRouter.of(context).go('/'),
          icon: const Icon(Icons.home),
        ),
      ),
      backgroundColor: const Color(0xFFF7F7FB),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 21, left: 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              height: 200.0,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ...locationUrl.asMap().
                      IconButton(
                        onPressed: () => launchLocationUrls(0),
                        icon: const Icon(Icons.location_on_rounded),
                        color: const Color(0xFFFF774C),
                        tooltip: 'Navarrete',
                      ),
                      const MyHorizontalSpaceBox(
                        height: 100,
                        width: 4,
                      ),
                      IconButton(
                        onPressed: () => launchLocationUrls(1),
                        icon: const Icon(Icons.location_on_rounded),
                        color: const Color(0xFFFF774C),
                        tooltip: 'Kino',
                      ),
                      const MyHorizontalSpaceBox(
                        height: 100,
                        width: 4,
                      ),
                      IconButton(
                          onPressed: () => launchLocationUrls(2),
                          icon: const Icon(Icons.location_on_rounded),
                          color: const Color(0xFFFF774C),
                          tooltip: 'MH69'),
                      const MyHorizontalSpaceBox(
                        height: 100,
                        width: 4,
                      ),
                      IconButton(
                          onPressed: () => launchLocationUrls(3),
                          icon: const Icon(Icons.location_on_rounded),
                          color: const Color(0xFFFF774C),
                          tooltip: 'Morelos'),
                    ],
                  ),
                ],
              ),
            ),
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
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.favorite, color: Colors.white70),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFF9881F),
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
