import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/features/navigation_menu/controller/navigation_controller.dart';

class NavigationMenuScreen extends StatelessWidget {
  NavigationMenuScreen({super.key});
  final navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      builder: (NavigationController _) => Scaffold(
        bottomNavigationBar: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: _.selectedIndex,
          onDestinationSelected: (int index) {
            navigationController.updateSelectedIndex(index);
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
        body: _.pages[navigationController.selectedIndex],
      ),
    );
  }
}
