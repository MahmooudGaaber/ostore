// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ostore/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicator extends StatelessWidget {
  DotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: OstoreDeviceUtility.getBottomNavigationBarHeight(context) + 25,
      left: OstoreSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.updatePageIndicatorWithDotIndicator,
        count: 3,
        effect: const ExpandingDotsEffect(
          dotHeight: 6,
          dotWidth: 10,
          activeDotColor: OstoreColors.buttonPrimaryColor,
        ),
      ),
    );
  }
}
