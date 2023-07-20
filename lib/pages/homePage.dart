import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:restro/modals/categorymodels.dart';
import 'package:restro/modals/dietmodels.dart';
import 'package:restro/pages/explorePage.dart';
import 'package:restro/pages/mainPage.dart';
import 'package:restro/utils/contants.dart';
import 'package:restro/widgets/appbar.dart';
import 'package:restro/widgets/categorySection.dart';
import 'package:restro/widgets/dietSection.dart';
import 'package:restro/widgets/drawer.dart';
import 'package:restro/widgets/orderSection.dart';
import 'package:restro/widgets/searchField.dart';

import 'cartPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Categorymodel> categories = [];
  List<DietModel> diets = [];
  int initalPage = 0;

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  void _getInitialInfo() {
    categories = Categorymodel.getCategories();
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();

    return Scaffold(
      key: _scaffoldkey,
      appBar: appBar(
        context: context,
        onTap: () {
          _scaffoldkey.currentState!.openDrawer();
        },
        icon: null,
      ),
      backgroundColor: Colors.white,
      body: [
        Center(child: MainPage()),
        const Center(
          child: ExplorePage(),
        ),
        Center(
          child: cartPage(),
        ),
      ].elementAt(initalPage),
      drawer: const myDrawer(),
      bottomNavigationBar: GNav(
          gap: 8,
          backgroundColor: bg3,
          color: Colors.white,
          activeColor: Colors.white,
          onTabChange: (value) {
            setState(() {
              initalPage = value;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.explore,
              text: "Explore",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "cart",
            ),
          ]),
    );
  }
}
