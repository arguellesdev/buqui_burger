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
  List<Food> foods = [];

  @override
  void initState() {
    super.initState();
    loadFoods();
  }

  void loadFoods() {
    // Parse JSON data and populate foods list
    for (var foodJson in foodsJson) {
      foods.add(Food.fromJson(foodJson));
    }
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
        leading: Image.network(foods[3].foodImage ?? ''),
        title: Text(foods[0].foodName ?? ''),
        subtitle: Text(foods[1].foodInfo ?? ''),
        trailing: Text(foods[2].burgerType ?? ''),
          );
        },
      ),
      floatingActionButton:
      FloatingActionButton(
        onPressed: _navigateToMenuScreen,
        child: const Icon(Icons.fork_left_rounded),
      ),
    );
  }
  void _navigateToMenuScreen() async {
    var foodProvider = FoodProvider();
    foodProvider.getFoods();
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyMenu())
    );
  }
}
