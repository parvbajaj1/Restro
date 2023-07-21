import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../utils/contants.dart';

class CartController extends GetxController {
  RxList Lateritems = [].obs;

  addtolist(data, sourcelist) {
    final item = sourcelist[data];

    if (Lateritems.any((element) => element['id'] == item['id'])) {
      final index =
          Lateritems.indexWhere((element) => element['id'] == item['id']);
      Lateritems[index]['quantity']++;
      log(Lateritems.toString());

      Fluttertoast.showToast(
          msg: "Recipe Already added",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0);
      Future.delayed(Duration(milliseconds: 500))
          .then((value) => Fluttertoast.cancel());
    } else {
      Lateritems.add(sourcelist[data]);
      log(Lateritems.toString());
      Fluttertoast.showToast(
          msg: "Recipe Added",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: bg1,
          textColor: Colors.white,
          fontSize: 16.0);
      Future.delayed(Duration(milliseconds: 500))
          .then((value) => Fluttertoast.cancel());
    }
  }

  removefromlist(data) {
    Lateritems.removeAt(data);
    update();
    log("removed");
    Fluttertoast.showToast(
        msg: "Item Removed",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: bg1,
        textColor: Colors.white,
        fontSize: 16.0);
    Future.delayed(Duration(milliseconds: 500))
        .then((value) => Fluttertoast.cancel());
  }

  RxList orderitems = [
    {
      'id': 1,
      'name': "Honey Pancake",
      'imageUrl':
          "https://img.buzzfeed.com/video-api-prod/assets/948a9cec015e4ff7aef1d761c506ac05/PancakePinterest1.jpg",
      'subtext': "Get our delicious pancakes",
      'quantity': 1,
    },
    {
      'id': 2,
      'name': "Pizza",
      'imageUrl':
          "https://littlesunnykitchen.com/wp-content/uploads/2022/03/Pepperoni-Pizza-1.jpg",
      'subtext': "Best pizza in town",
      'quantity': 1,
    },
    {
      'id': 3,
      'name': "Butter Chicken",
      'imageUrl':
          "https://cafedelites.com/wp-content/uploads/2019/01/Butter-Chicken-IMAGE-27.jpg",
      'subtext': "Hands on the best chicken",
      'quantity': 1,
    },
    {
      'id': 4,
      'name': "Ice Cream",
      'imageUrl':
          "https://www.theendlessmeal.com/wp-content/uploads/2016/07/strawberry-ice-cream-2.jpg",
      'subtext': "Delicious ice cream ways",
      'quantity': 1,
    }
  ].obs;
}
