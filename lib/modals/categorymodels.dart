import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'package:restro/utils/contants.dart';

class Categorymodel extends GetxController {
  String name;
  String iconPath;
  Color boxColor;
  RxList foodList;

  Categorymodel(
      {required this.name,
      required this.iconPath,
      required this.boxColor,
      required this.foodList});

  static List<Categorymodel> getCategories() {
    List<Categorymodel> categories = [];

    categories.add((Categorymodel(
      name: 'Pizza',
      iconPath: 'assets/icons/plate.svg',
      boxColor: bg1,
      foodList: pizzalist,
    )));
    categories.add((Categorymodel(
      name: 'Shrimp',
      iconPath: 'assets/icons/plate1.svg',
      boxColor: bg2,
      foodList: Shrimplist,
    )));
    categories.add((Categorymodel(
      name: 'Burger',
      iconPath: 'assets/icons/plate2.svg',
      boxColor: bg1,
      foodList: Burgerlist,
    )));
    categories.add((Categorymodel(
      name: 'Momos',
      iconPath: 'assets/icons/plate3.svg',
      boxColor: bg2,
      foodList: Momoslist,
    )));

    return categories;
  }
}
