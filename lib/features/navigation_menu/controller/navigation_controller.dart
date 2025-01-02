import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  int selectedIndex = 0;

  final List<Widget> pages = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];

  void updateSelectedIndex(int index) {
    selectedIndex = index;
    update();
  }
}
