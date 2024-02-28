import 'package:buqui_burgers/src/common_widgets/hp_menu_drawer.dart';
import 'package:buqui_burgers/src/features/home_page/buqui_page.dart';
import 'package:buqui_burgers/src/features/home_page/home_buttons.dart';
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
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      drawer: MyDrawer(drawerItems: [
        DrawerItem(
          title: 'Menu',
          onTap: _goToMenuScreen,
        ),
        DrawerItem(
          title: 'TapRoom',
          onTap: _goToTapRoom,
        ),
        DrawerItem(
          title: 'Contact',
          onTap: _goToContact,
        ),
      ]),
      body: const Padding(
        padding: EdgeInsets.only(right: 22, left: 22),
        child: SingleChildScrollView(
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
      ),
      bottomNavigationBar: const MyHomeButtons(),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.cyan.withOpacity(.64),
        foregroundColor: Colors.white,
        splashColor: Colors.orangeAccent.withOpacity(0.80),
        shape: const CircleBorder(),
        elevation: 2,
        focusElevation: 4,
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

  void _goToContact() {
    router.go('/contact');
  }

  void _goToAboutUs() {
    router.go('/about');
  }
}

void _goToTapRoom() {
  router.go('/taproom');
}

