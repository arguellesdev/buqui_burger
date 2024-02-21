// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      foodName: json['food_name'] as String,
      foodInfo: json['foodInfo'] as String,
      burgerType: json['burgerType'] as String,
      foodImage: json['foodImage'] as String,
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'food_name': instance.foodName,
      'burgerType': instance.burgerType,
      'foodImage': instance.foodImage,
      'foodInfo': instance.foodInfo,
    };
