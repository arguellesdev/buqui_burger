import 'package:buqui_burgers/src/assets/constants.dart';
import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final VoidCallback? onTap;

  DrawerItem({required this.title, this.onTap});
}

class DrawerBuilder {
  final List<DrawerItem> items;

  DrawerBuilder({required this.items});

  Widget build() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          contentPadding: const EdgeInsets.only(top: 46),
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(item.title),
          ),
          onTap: item.onTap,
        );
      },
    );
  }
}

class MyDrawer extends StatelessWidget {
  final List<DrawerItem> drawerItems;
  final String semanticMessage;
  const MyDrawer(
      {super.key, required this.drawerItems, required this.semanticMessage});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticMessage,
      child: Drawer(
        backgroundColor: baseColor1.withOpacity(0.90),
        shadowColor: backgroundC2,
        child: SafeArea(
          child: DrawerBuilder(items: drawerItems).build(),
        ),
      ),
    );
  }
}
