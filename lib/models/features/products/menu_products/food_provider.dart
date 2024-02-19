import 'dart:convert';
import 'package:buqui_burgers/models/features/products/menu_products/food.dart';

import '../../../mocks/food_mocks.dart';

class FoodProvider {
  Food getFood() {
    return Food.fromJson(jsonDecode(foodJson) as Map<String, dynamic>);

  }
}
