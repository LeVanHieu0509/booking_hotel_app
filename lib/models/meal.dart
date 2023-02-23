import 'package:flutter/foundation.dart';

// là một dạng giúp chúng ra lựa chọn giá trị giống như typescript
enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients; //Thành phần
  final List<String> steps; //Các bước
  final int duration; //Khoảng thời gian
  final Complexity complexity; //Độ chín của meal
  final Affordability affordability; //Chi trả

  //Sử dụng để filter
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan; //Món chay
  final bool isVegetarian; //Người ăn chay

  const Meal(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.complexity,
      required this.affordability,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian});
}
