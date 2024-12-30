import 'package:flutter/material.dart';
import 'package:ostore/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/device/device_utility.dart';

class onBoardingSkipButton extends StatelessWidget {
  const onBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: OstoreDeviceUtility.getAppBarHeight(context),
      right: OstoreSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.pressSkipButton();
        },
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: OstoreColors.primaryColor,
              ),
        ),
      ),
    );
  }
}
