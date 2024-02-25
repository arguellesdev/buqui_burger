import 'package:json_annotation/json_annotation.dart';
part 'food.g.dart';

@JsonSerializable()
class Food {
  @JsonKey(name:'food_name')
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

//   ADD const Food(
//     foodName: "Chicken X",
//     foodInfo: "Chicken, ",
//     burgerType: "Zero-Carb Diet",
//     foodImage:
//         "https://img.freepik.com/free-photo/front-view-vegetarian-burger-with-black-buns_23-2148784537.jpg?w=900&t=st=1707331456~exp=1707332056~hmac=f7420e85f5b2dbd8a1f2e3220b087122509227d709febdf5fc55d969a493f291",

