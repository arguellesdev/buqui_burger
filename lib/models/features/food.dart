import 'package:json_annotation/json_annotation.dart';
part 'food.g.dart';

@JsonSerializable()
class Food {
  @JsonKey(name:'food_name')
  final String? foodName;
  final String? burgerType;
  final String? foodImage;
  final String? foodInfo;

  const Food({
    this.foodImage,
    this.foodInfo,
    this.foodName,
    this.burgerType,
  });

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);
}


// List<Food> foodList = [
//   const Food(
//     foodName: "Sonora bichi",
//     foodInfo: "Steak,",
//     burgerType: "carnivore diet",
//     foodImage:
//         "https://img.freepik.com/free-photo/meat-cheeseburger-with-bacon-french-fries_140725-4811.jpg?w=1060&t=st=1707331765~exp=1707332365~hmac=03346927cd597ed69e0f14773ca0f2d0fa3dfe9b572d1db6119fbef2b0faafd9",
//   ),
//   const Food(
//     foodName: "Pistachios Experiment",
//     foodInfo: "Pistachios,",
//     burgerType: "Vegan",
//     foodImage:
//         "<https://img.freepik.com/free-photo/vegan-burgers-with-lentils-pistashios_661915-259.jpg?w=900&t=st=1707331572~exp=1707332172~hmac=772550310773a846393d998cd8f3c6ba1974995fb8071502d1f8df60e5737cb7",
//   ),
//   const Food(
//     foodName: "Chicken X",
//     foodInfo: "Chicken, ",
//     burgerType: "carnivore diet",
//     foodImage:
//         "https://img.freepik.com/free-photo/front-view-vegetarian-burger-with-black-buns_23-2148784537.jpg?w=900&t=st=1707331456~exp=1707332056~hmac=f7420e85f5b2dbd8a1f2e3220b087122509227d709febdf5fc55d969a493f291",
//   ),
// ];
