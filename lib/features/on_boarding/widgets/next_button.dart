import 'package:flutter/material.dart';
import 'package:ostore/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/device/device_utility.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: OstoreDeviceUtility.getBottomNavigationBarHeight(context),
      right: OstoreSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.pressNextButton();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: OstoreColors.buttonPrimaryColor,
        ),
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
