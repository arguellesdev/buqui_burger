import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuquiBurgers extends StatelessWidget {
  const BuquiBurgers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
              'https://static.wixstatic.com/media/1c6db2_52e83a98887d4e6db1a887fd861b6a9f~mv2.jpg/v1/fit/w_2500,h_1330,al_c/1c6db2_52e83a98887d4e6db1a887fd861b6a9f~mv2.jpg'),
          Image.network(
              'https://mouthbysouthwest.com/wp-content/uploads/2023/07/BuquiBichi071723.jpg'),
          Image.network(
              'https://mouthbysouthwest.com/wp-content/uploads/2024/01/BuquiBichi010224.jpg'),
        ],
      ),
    );
  }
}
