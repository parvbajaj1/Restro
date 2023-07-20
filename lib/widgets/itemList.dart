import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restro/controllers/cart_controller.dart';
import 'package:restro/pages/recipePage.dart';
import 'package:restro/utils/contants.dart';

class itemList extends StatefulWidget {
  itemList(
      {super.key,
      required this.ontap,
      required this.cardlist,
      required this.index,
      required this.buttonColor,
      required this.buttonIcon});

  VoidCallback ontap;
  RxList cardlist;
  int index;
  Color buttonColor;
  IconData buttonIcon;
  @override
  State<itemList> createState() => _itemListState();
}

class _itemListState extends State<itemList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(recipePage(index: widget.index)),
      child: Container(
        // color: Colors.purpleAccent.withOpacity(0.3),
        // height: 100,
        width: Get.width,
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 2),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                      widget.cardlist[widget.index]["imageUrl"],
                      width: 50,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      // color: Colors.grey,
                      width: 180,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.cardlist[widget.index]["name"],
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(widget.cardlist[widget.index]["subtext"]),
                            const SizedBox(
                              height: 10,
                            ),
                          ]),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: widget.ontap,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          widget.buttonIcon,
                          color: widget.buttonColor.withOpacity(0.8),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
