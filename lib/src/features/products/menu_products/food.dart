import 'package:json_annotation/json_annotation.dart';
part 'food.g.dart';

@JsonSerializable()
class Food {
  @JsonKey(name: 'food_name')
  final String foodName;
  final String burgerType;
  final String foodImage;
  final String foodInfo;

  const Food({
    required this.foodName,
    required this.foodInfo,
    required this.burgerType,
    required this.foodImage,
  });

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
