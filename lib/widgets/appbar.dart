import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restro/controllers/cart_controller.dart';
import 'package:restro/pages/cartPage.dart';
import 'package:restro/pages/detailpage.dart';
import 'package:restro/pages/homePage.dart';

import '../utils/contants.dart';

PreferredSizeWidget appBar({
  VoidCallback? onTap,
  String? icon,
  required BuildContext? context,
}) {
  // String appbarBg;

  final controller = Get.put(CartController());
  return AppBar(
    title: const Text(
      "Restro",
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0,
    leading: GestureDetector(
      onTap: onTap!,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 30,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xffF7F8F8), borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          icon ?? menuIcon,
          height: 20,
          width: 20,
        ),
      ),
    ),
  );
}
