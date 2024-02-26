import 'package:flutter/material.dart';
import '../../common_widgets/container_theme.dart';

class ContactBuqui extends StatelessWidget {
  const ContactBuqui({super.key});

  final String phoneNumber = "+52 (662) 3026833";
  final String address = "Blvd. Juan Navarrete 502, 83249 Hermosillo, Son.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: const ContainerTheme(),
          backgroundColor: Colors.white,
          foregroundColor: Colors.white60,
          title: const Text('The Buqui Contact'),
          titleSpacing: 1.2,
          titleTextStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.fade,
              color: Colors.brown),
        ),
      body: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Image.network('https://lumari.mx/wp-content/uploads/2019/07/BBN_11-800x533.jpg'),
          Card(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.call_rounded),
                  const SizedBox(height: 20),
                  Text(
                    phoneNumber,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.brown),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    address,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.brown),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
