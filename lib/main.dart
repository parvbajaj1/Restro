import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restro/pages/homePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'poppins', useMaterial3: true),
        home: homePage());
  }
}
