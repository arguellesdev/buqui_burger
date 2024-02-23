import 'package:flutter/material.dart';
import '../products/menu_products/food.dart';
import '../products/menu_products/food_provider.dart';

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
        backgroundColor: Colors.amber.withOpacity(0.72),
        foregroundColor: Colors.brown,
        title: const Text('The Buqui Bichi Menu'),
        titleSpacing: 1.2,
        titleTextStyle: const TextStyle(
            fontSize:18 ,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.fade,
        color: Colors.brown),
      ),
      // endDrawer: ,
      body: PageView.builder(
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      foods[index].foodImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          foods[index].foodName,
                          style: const TextStyle(
                              fontSize: 27.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          foods[index].burgerType,
                          style: const TextStyle(
                              fontSize: 19.0),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          foods[index].foodInfo,
                          style: const TextStyle(
                              fontSize: 17.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
