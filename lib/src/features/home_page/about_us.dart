import 'package:buqui_burgers/src/common_widgets/container_theme.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white60,
        title: const Text('Who the buquis are (About us)',
          style: TextStyle(    color: Colors.white60,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: const ContainerTheme(),
      ),
      body: SingleChildScrollView (
        child: Column(
          children: [
            Image.network(
                'https://static.wixstatic.com/media/1c6db2_81c48fed10fb49e4b91c48c1a5a668cb~mv2.jpg/v1/fill/w_640,h_232,al_t,q_80,usm_0.66_1.00_0.01,enc_auto/1c6db2_81c48fed10fb49e4b91c48c1a5a668cb~mv2.jpg'),
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
        ),
      ),
    );
  }
}
