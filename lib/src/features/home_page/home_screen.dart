import 'package:buqui_burgers/src/common_widgets/hp_menu_drawer.dart';
import 'package:buqui_burgers/src/features/home_page/buqui_page.dart';
import 'package:buqui_burgers/src/features/home_page/home_buttons.dart';
import 'package:buqui_burgers/src/routes/b_routes.dart';
import 'package:buqui_burgers/src/common_widgets/my_app_bar.dart';
import "package:flutter/material.dart";
import 'floating_home_button.dart';
import 'my_search_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundC1,
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        drawerItems: [
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
          DrawerItem(title: 'Log In', onTap: _goToLogIn)
        ],
        semanticMessage: 'Discover us',
      ),
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
      floatingActionButton: const HomeFloatingButton(),
    );
  }
}

void _goToMenuScreen() {
  router.goNamed(AppRoute.menu.name);
}

void _goToContact() {
  router.pushNamed(AppRoute.contactUs.name);
}

void _goToTapRoom() {
  router.goNamed(AppRoute.taproom.name);
}

void _goToLogIn() {
  router.pushNamed(AppRoute.signIn.name);
}
