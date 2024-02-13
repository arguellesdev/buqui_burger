import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [
      Image.network(
          'https://static.wixstatic.com/media/caa56d_1b219f6632e74972a0abfc3f0c249763~mv2.png/v1/fill/w_652,h_510,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Tap%20Room%20Morelos.png'),
      FloatingActionButton(
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
    ])
    );
  }
}
