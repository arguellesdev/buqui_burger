import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

  static const TextStyle optionStyle = TextStyle(
      color: Colors.grey,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: 'Futura');

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      textAlign: TextAlign.center,
      'Boulevard Juan Navarrete 502 \n Hermosillo, Sonora, Mexico \n Postal Code: 83249',
      style: optionStyle,
    ),
    Text(
      textAlign: TextAlign.center,
      'Phone \n + 52 (662)302-6833',
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
        backgroundColor: const Color(0xFFF7F7FB),
        foregroundColor: Colors.white,
        title: const Text('Contact us'),
        titleSpacing: 1.2,
        titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.fade,
            color: Colors.white),
        leading: InkWell(
          onTap:() {GoRouter.of(context).go('/');},
              child: const Icon(Icons.arrow_back_ios),
        )
      ),
      backgroundColor: const Color(0xFFF7F7FB),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 21, left: 21),
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
              'https://static.wixstatic.com/media/3efee9_d3d16f0e618040af97b0ad01abcd03b3~mv2.png/v1/fill/w_1184,h_360,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/cervezas_pngs.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: _goToHomeScreen,
        elevation: 1,
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.favorite, color: Colors.white70),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFF9881F),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Buqui\'s Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_rounded),
            label: 'Call us',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white54,
        onTap: _onItemTapped,
      ),
    );
  }

  void _goToHomeScreen() {
    router.go('/about');
  }
}
