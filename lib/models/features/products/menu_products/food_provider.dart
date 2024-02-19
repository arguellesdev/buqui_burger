import 'dart:convert';
import 'package:buqui_burgers/models/features/products/menu_products/food.dart';
import 'package:flutter/material.dart';
import '../../../mocks/food_mocks.dart';

class FoodProvider {
  Type getFood() {
    Map<String, dynamic> decodedJson =
        jsonDecode(foodJson) as Map<String, dynamic>;
    Food food = Food(
      foodName: decodedJson['food_name'],
      foodInfo: decodedJson['foodInfo'],
      burgerType: decodedJson['burgerType'],
      foodImage: decodedJson['foodImage'],
    );
    debugPrint('food debug output = ${food.foodName}, ${food.foodInfo}, ${food.burgerType}');
    return Food;
  }
}
