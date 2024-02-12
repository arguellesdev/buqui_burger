import 'package:buqui_burgers/models/common_widgets/container_theme.dart';
import 'package:buqui_burgers/models/common_widgets/my_themes.dart';
import 'package:buqui_burgers/models/common_widgets/side_menu_drawer.dart';
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
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black38,
        ),
        title: const Text('Buqui Burgers',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              wordSpacing: 12,
              letterSpacing: 9,
            ),
        ),
        foregroundColor: Colors.black38,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: const ContainerTheme(),
      ),
      drawer: const MyDrawer(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // children: [my_widgets.SearchBar()],
        children: [
          MySearchBar(
            hintText: 'What do you want to eat today?',
            // onSearch: (String value) {},
          )
        ],
      ),
    );
  }
}
