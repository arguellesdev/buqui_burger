import 'package:buqui_burgers/src/features/products/menu_products/food.dart';
import 'package:flutter/material.dart';
import '../../../mocks/food_mocks.dart';

class FoodProvider {
  List<Food> getFoods() {
    List<Food> foods = [];
    for (var jsonData in foodsJson) {
      Food food = Food.fromJson(jsonData);
      foods.add(food);
    }
    for (var food in foods) {
      debugPrint('food debug output = ${food.foodName} ${food.burgerType}');
    }
    return foods;
  }
}

// class FoodProvider {
//   Type getFood() {
//     Map<String, dynamic> decodedJson =
//         jsonDecode(foodJson) as Map<String, dynamic>;
//     Food food = Food(
//       foodName: decodedJson['food_name'],
//       foodInfo: decodedJson['foodInfo'],
//       burgerType: decodedJson['burgerType'],
//       foodImage: decodedJson['foodImage'],
//     );
//     debugPrint('food debug output = ${food.foodName}, ${food.foodInfo}, ${food.burgerType}');
//     return Food;
//   }
// }
