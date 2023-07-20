import 'package:flutter/material.dart';
import 'package:restro/utils/contants.dart';

class Categorymodel {
  String name;
  String iconPath;
  Color boxColor;

  Categorymodel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<Categorymodel> getCategories() {
    List<Categorymodel> categories = [];

    categories.add((Categorymodel(
      name: 'Pizza',
      iconPath: 'assets/icons/plate.svg',
      boxColor: bg1,
    )));
    categories.add((Categorymodel(
      name: 'Shrimp',
      iconPath: 'assets/icons/plate1.svg',
      boxColor: bg2,
    )));
    categories.add((Categorymodel(
      name: 'Burger',
      iconPath: 'assets/icons/plate2.svg',
      boxColor: bg1,
    )));
    categories.add((Categorymodel(
      name: 'Momos',
      iconPath: 'assets/icons/plate3.svg',
      boxColor: bg2,
    )));

    return categories;
  }
}
