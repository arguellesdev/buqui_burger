import 'package:buqui_burgers/models/common_widgets/hp_menu_drawer.dart';
import 'package:buqui_burgers/models/screens/home_page/myappbar_hp.dart';
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
        DrawerItem(title: 'Menu', onTap: () {}),
        DrawerItem(title: 'TapRoom', onTap: () {}),
        DrawerItem(title: 'Contact', onTap: () {})
      ]),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MySearchBar(
            hintText: 'What do you want today buqui?',
            // onSearch: (String value) {},
          )
        ],
      ),
    );
  }
}