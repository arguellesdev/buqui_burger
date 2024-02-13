import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            'https://static.wixstatic.com/media/caa56d_1b219f6632e74972a0abfc3f0c249763~mv2.png/v1/fill/w_652,h_510,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Tap%20Room%20Morelos.png'),
        const Padding(
          padding: EdgeInsets.all(37),
          child: Text(
            'In Sonora, where the sun kisses the earth and the stars illuminate the desert, Buqui Bichi was born. A dream come true for Francisco, a young man passionate about craft beer and Sonoran culture.\n\n Inspired by ancestral brewing traditions and the richness of the land, Francisco began to create unique beers with local ingredients. The result: Buqui Bichi, an authentic flavor that conquered the palates of the Sonorenses.\n\n More than a beer, Buqui Bichi is a symbol of identity, a tribute to the land and the traditions that unite us. With each sip, we celebrate the spirit of Sonora and share its essence with the world.\n\n Join the Buqui Bichi experience and discover the taste of Sonora.',
            textAlign: TextAlign.justify,
            overflow: TextOverflow.fade,
            style: TextStyle(
                color: Colors.black38,
                fontSize: 14,
                fontFamily: 'Kosugi Maru'
            ),
          ),
        ),
      ],
    );
  }
}
