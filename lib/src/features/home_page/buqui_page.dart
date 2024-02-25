import 'package:flutter/material.dart';

class BuquiBurgers extends StatelessWidget {
  const BuquiBurgers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            verticalDirection: VerticalDirection.down ,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Image.network(
                    'https://static.wixstatic.com/media/1c6db2_52e83a98887d4e6db1a887fd861b6a9f~mv2.jpg/v1/fit/w_2500,h_1330,al_c/1c6db2_52e83a98887d4e6db1a887fd861b6a9f~mv2.jpg'),
              ),
              Expanded(
                flex: 2,
                child: Image.network(
                    'https://mouthbysouthwest.com/wp-content/uploads/2023/07/BuquiBichi071723.jpg'),
              ),
              Expanded(
                child: Image.network(
                    'https://www.informador.mx/__export/1575165778639/sites/elinformador/img/2019/11/30/2_1_crop1575165583325.jpg_1970638775.jpg'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26,
                foregroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
                onPressed: () {},
                icon: const Icon(Icons.call_end_rounded),
                label: const Text('Call us'),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                  foregroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.share_location),
                label: const Text('Where the buquis are'),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                  foregroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.share),
                label: const Text('Share to your buquis'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
