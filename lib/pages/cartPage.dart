import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restro/widgets/appbar.dart';

import '../controllers/cart_controller.dart';
import '../utils/contants.dart';
import '../widgets/itemList.dart';
import 'homePage.dart';

class cartPage extends StatefulWidget {
  cartPage({
    super.key,
  });

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  final controller = Get.put(CartController());
  CartController c = CartController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Obx(
          () {
            if (controller.Lateritems.isEmpty) {
              return Container(
                  height: 100,
                  child: Center(child: Text("Nothing to see here")));
            }
            return ListView.builder(
              itemCount: controller.Lateritems.length,
              itemBuilder: (context, index) => itemList(
                ontap: () {
                  controller.removefromlist(index);
                },
                cardlist: controller.Lateritems,
                index: index,
                buttonColor: Colors.red,
                buttonIcon: Icons.remove_circle,
              ),
            );
          },
        ),
      ),
    );
  }
}
