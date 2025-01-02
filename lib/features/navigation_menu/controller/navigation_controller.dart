import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostore/features/home/screens/home.dart';
import 'package:ostore/features/profile/screen/profile.dart';
import 'package:ostore/features/shop/screens/shop.dart';
import 'package:ostore/features/wishlist/screens/wishlist.dart';

class NavigationController extends GetxController {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const ShopScreen(),
    const WishlistScreen(),
    const ProfileScreen(),
  ];

  void updateSelectedIndex(int index) {
    selectedIndex = index;
    update();
  }
}
