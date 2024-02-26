import 'package:flutter/material.dart';
import '../../common_widgets/container_theme.dart';
import '../../routes/b_routes.dart';

class ContactBuqui extends StatelessWidget {
  const ContactBuqui({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Blvd. Juan Navarrete 502, 83249 Hermosillo, Sonora, Mexico',
      style: optionStyle,
    ),
    Text(
      '+ 52 (662)302-6833',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const ContainerTheme(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.white60,
        title: const Text('Contact us'),
        titleSpacing: 1.2,
        titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.fade,
            color: Colors.white60),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              height: 200.0,
              alignment: Alignment.center,
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            Image.network(
              'https://lumari.mx/wp-content/uploads/2019/07/BBN_11-800x533.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToHomeScreen,
        elevation: 1,
        backgroundColor: const Color(0xFFF9881F),
        child: const Icon(Icons.home),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Buqi\'s Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_rounded),
            label: 'Call us',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _goToHomeScreen() {
    router.go('/');
  }
}