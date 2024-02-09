import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: _buildDrawerList(),
      ),
    );
  }

  Widget _buildDrawerList() {
    return Column(
      children: [
        const SizedBox(height: 30),
        _buildDrawerItem(title: 'Item 1', onTap: () {}),
        _buildDrawerItem(title: 'Item 2', onTap: () {}),
        _buildDrawerItem(title: 'Item 3', onTap: () {}),
      ],
    );
  }

  Widget _buildDrawerItem(
      {required String title, required VoidCallback onTap}) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
