import 'package:flutter/material.dart';

import '../../features/products/menu_products/food.dart';
import '../../features/products/menu_products/food_provider.dart';
import '../../mocks/food_mocks.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  late final List<Food> foods;

  @override
  void initState() {
    super.initState();
    var foodProvider = FoodProvider();
    foods = foodProvider.getFoods();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Buqui Bichi Experience'),
        titleSpacing: 1.2,
      ),
      // endDrawer: ,
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(foods[index].foodImage),
            title: Text(foods[index].foodName),
            subtitle: Text(foods[index].foodInfo),
            trailing: Text(foods[index].burgerType),
          );
        },
      ),
    );
  }
}
