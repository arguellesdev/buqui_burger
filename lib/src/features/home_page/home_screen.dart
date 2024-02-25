import 'package:buqui_burgers/src/common_widgets/hp_menu_drawer.dart';
import 'package:buqui_burgers/src/features/home_page/buqui_page.dart';
import 'package:buqui_burgers/src/routes/b_routes.dart';
import 'package:buqui_burgers/src/features/home_page/my_app_bar.dart';
import "package:flutter/material.dart";
import 'my_search_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FB),
      appBar: const MyAppBar(),
      drawer: MyDrawer(drawerItems: [
        DrawerItem(
          title: 'Menu',
          onTap: _goToMenuScreen,
        ),
        DrawerItem(
          title: 'TapRoom',
          onTap: () {},
        ),
        DrawerItem(title: 'Contact', onTap: () {}),
      ]),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MySearchBar(
              hintText: 'What do you want today buqui?',
              // onSearch: (String value) {},
            ),
            BuquiBurgers(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.black26,
        foregroundColor: Colors.orangeAccent,
        splashColor: Colors.orangeAccent.withOpacity(0.28),
        shape: const CircleBorder(),
        onPressed: () {
          _goToAboutUs();
        },
        child: const Icon(
          Icons.question_mark,
          semanticLabel: 'About us',
        ),
      ),
    );
  }
  void _goToMenuScreen() {
    router.go('/menu');
  }
  void _goToAboutUs() {
    router.go('/about');
  }
}

