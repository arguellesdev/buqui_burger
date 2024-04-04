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
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          contentPadding: const EdgeInsets.only(top: 55),
          title: Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(item.title,
                style: const TextStyle(
                    fontFamily: 'Futura',
                    fontWeight: FontWeight.bold,
                    color: fontColor1)),
          ),
          onTap: item.onTap,
        );
      },
    );
  }
}

class MyDrawer extends StatelessWidget {
  final List<DrawerItem> drawerItems;
  final double drawerWidth;

  const MyDrawer(
      {super.key, required this.drawerItems, this.drawerWidth = 180});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: drawerWidth,
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
