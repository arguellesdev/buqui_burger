import 'package:flutter/material.dart';


class MyBottomNavigationBarItems {
  static const List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.location_on),
      label: 'Buqi\'s Home',
      backgroundColor: Colors.red,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.call_rounded),
      label: 'Call us',
      backgroundColor: Colors.green,
    ),
  ];
}

