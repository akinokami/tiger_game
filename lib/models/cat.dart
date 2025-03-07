import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:tiger_game/models/board_position.dart';
import 'package:tiger_game/models/meal.dart';

class Cat {
  Color color;
  Meal meal;
  List<Meal> meals;
  List<Meal> servedMeals;
  int livesCount;
  Cuisine cuisine;
  BoardPosition position;
  List<BoardPosition> positions;
  AssetImage image;

  Cat({
    required this.color,
    required this.meal,
    required this.meals,
    required this.servedMeals,
    required this.livesCount,
    required this.cuisine,
    required this.position,
    required this.positions,
    required this.image,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cat &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          meal == other.meal &&
          meals == other.meals &&
          servedMeals == other.servedMeals &&
          livesCount == other.livesCount &&
          cuisine == other.cuisine &&
          position == other.position &&
          positions == other.positions &&
          image == other.image;

  @override
  int get hashCode =>
      color.hashCode ^
      meal.hashCode ^
      meals.hashCode ^
      servedMeals.hashCode ^
      livesCount.hashCode ^
      cuisine.hashCode ^
      position.hashCode ^
      positions.hashCode ^
      image.hashCode;
}
