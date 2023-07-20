import 'dart:ui';

import '../utils/contants.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add((DietModel(
      name: 'Honey Pancake',
      iconPath: 'assets/icons/diet1.svg',
      level: 'Easy',
      duration: '30mins',
      calorie: '180cal',
      viewIsSelected: true,
      boxColor: bg1,
    )));
    diets.add((DietModel(
      name: 'Taco',
      iconPath: 'assets/icons/diet2.svg',
      level: 'Easy',
      duration: '30mins',
      calorie: '180cal',
      viewIsSelected: true,
      boxColor: bg2,
    )));
    diets.add((DietModel(
      name: 'Avacado',
      iconPath: 'assets/icons/diet3.svg',
      level: 'Easy',
      duration: '30mins',
      calorie: '180cal',
      viewIsSelected: true,
      boxColor: bg1,
    )));
    diets.add((DietModel(
      name: 'Chicken Rice',
      iconPath: 'assets/icons/diet4.svg',
      level: 'Easy',
      duration: '30mins',
      calorie: '180cal',
      viewIsSelected: true,
      boxColor: bg2,
    )));

    return diets;
  }
}
