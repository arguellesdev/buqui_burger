import 'package:buqui_burgers/models/common_widgets/hp_menu_drawer.dart';
import 'package:buqui_burgers/models/screens/home_page/about_us.dart';
import 'package:buqui_burgers/models/features/products/menu_products/food_provider.dart';
import 'package:buqui_burgers/models/screens/home_page/myappbar_hp.dart';
import 'package:buqui_burgers/models/screens/menu/menu.dart';
import "package:flutter/material.dart";
import 'my_search_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FB),
      appBar: const MyAppBar(),
      drawer: MyDrawer(drawerItems: [
        DrawerItem(
          title: 'Menu',
          onTap: _navigateToMenuScreen,
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
            AboutUs(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black26,
        foregroundColor: Colors.orangeAccent,
        splashColor: Colors.orangeAccent.withOpacity(0.28),
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.chat_bubble_rounded,
          semanticLabel: 'Chat with us',
        ),
      ),
    );
  }

  void _navigateToMenuScreen() {
    var foodProvider = FoodProvider();
    foodProvider.getFoods();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyMenu(),
      ),
    );
  }
}

