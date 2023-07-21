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
  orderSection(
      {super.key, required this.sectionHeading, required this.sourcelist});
  String sectionHeading;
  RxList sourcelist;

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
              itemCount: sourcelist.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => itemList(
                ontap: () {
                  controller.addtolist(index, sourcelist);
                  // controller.Lateritems.addAll(item)
                },
                cardlist: sourcelist,
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
