import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:restro/controllers/cart_controller.dart';
import 'package:restro/utils/contants.dart';

import 'itemList.dart';

class orderSection extends StatelessWidget {
  orderSection({
    super.key,
    required this.sectionHeading,
  });
  String sectionHeading;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              sectionHeading,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.orderitems.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => itemList(
                ontap: () {
                  // if (controller.Lateritems.isNotEmpty) {
                  // for (var element in controller.Lateritems) {
                  //   log('elements   ' + element.toString());
                  //   log(controller.orderitems[index]['id'].toString());
                  //   if (controller.orderitems[index]['id'] == element['id']) {
                  //     // controller.Lateritems[index];
                  //     log("exists");
                  //     return;
                  //   } else if (controller.orderitems[index]['id'] !=
                  //       element['id']) {
                  //     // controller.addtolist(index);
                  //     log("not exists");
                  //     // return;
                  //   }
                  // }
                  // }
                  //  else {
                  controller.addtolist(index);
                 
                  // controller.addtolist(index);
                  // }
                },
                cardlist: controller.orderitems,
                index: index,
                buttonColor: bg1,
                buttonIcon: Icons.add_circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
