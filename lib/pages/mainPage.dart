import 'package:flutter/material.dart';

import '../modals/categorymodels.dart';
import '../modals/dietmodels.dart';
import '../widgets/categorySection.dart';
import '../widgets/dietSection.dart';
import '../widgets/orderSection.dart';
import '../widgets/searchField.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  List<Categorymodel> categories = [];
  List<DietModel> diets = [];
  void _getInitialInfo() {
    categories = Categorymodel.getCategories();
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const searchField(),
          const SizedBox(
            height: 40,
          ),
          categorySection(categories: categories),
          const SizedBox(
            height: 40,
          ),
          dietSection(diets: diets),
          const SizedBox(
            height: 40,
          ),
          orderSection(sectionHeading: "Explore"),
        ],
      ),
    );
  }
}
