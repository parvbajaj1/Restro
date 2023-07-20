import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restro/pages/homePage.dart';
import 'package:restro/widgets/appbar.dart';
import 'package:restro/widgets/itemList.dart';
import 'package:restro/widgets/orderSection.dart';
import 'package:restro/widgets/searchField.dart';

import '../modals/categorymodels.dart';
import '../utils/contants.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.id});
  int? id;

  List<Categorymodel> categories = Categorymodel.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(
          context: context,
          onTap: () => Navigator.pop(
            context,
          ),
          icon: back,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                      color: categories[id!].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                categories[id!].iconPath,
                              ),
                            ),
                          ),
                          Text(
                            categories[id!].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 30),
                          ),
                        ]),
                  ),
                ),
              ),
              searchField(),
              SizedBox(
                height: 20,
              ),
              orderSection(
                sectionHeading: "Results",
              ),
            ],
          ),
        ));
  }
}
