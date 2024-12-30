import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update page indicator with scroll
  void updatePageIndicator(int pageIndex) {
    currentPageIndex.value = pageIndex;
    update();
  }

  // update page indicator with dot indicator
  void updatePageIndicatorWithDotIndicator(int pageIndex) {
    currentPageIndex.value = pageIndex;
    pageController.jumpToPage(pageIndex);
    update();
  }

  // press next button
  void pressNextButton() {
    if (currentPageIndex.value == 2) {
      // Get.to(() => const LoginView());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
      update();
    }
  }

  //press skip button
  void pressSkipButton() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    update();
  }
}
