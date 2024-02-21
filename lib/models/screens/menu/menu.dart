import 'package:flutter/material.dart';
import '../../features/products/menu_products/food.dart';
import '../../features/products/menu_products/food_provider.dart';

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
            leading: SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  foods[index].foodImage,
                  fit: BoxFit.cover,
                ),
            ),
            title: Text(foods[index].foodName),
            subtitle: Text(foods[index].foodInfo),
            trailing: Text(foods[index].burgerType),
          );
        },
      ),
    );
  }
}
