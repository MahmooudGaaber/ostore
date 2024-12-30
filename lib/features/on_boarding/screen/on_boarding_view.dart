import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostore/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:ostore/features/on_boarding/widgets/dot_indicator.dart';
import 'package:ostore/features/on_boarding/widgets/image_view.dart';
import 'package:ostore/features/on_boarding/widgets/next_button.dart';
import 'package:ostore/features/on_boarding/widgets/skip_button.dart';
import 'package:ostore/util/constant/images_strings.dart';
import 'package:ostore/util/constant/text_strings.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  final controller = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: OstoreColors.primaryBackground,
      body: Stack(
        children: [
          // horizontal scroll page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoarding(
                image: OstoreImagesStrings.onBoardingDelivery,
                title: OstoreTextStrings.onBoardingTitle3,
                subTitle: OstoreTextStrings.onBoardingSubTitle3,
              ),
              onBoarding(
                image: OstoreImagesStrings.onBoardingSearching,
                title: OstoreTextStrings.onBoardingTitle1,
                subTitle: OstoreTextStrings.onBoardingSubTitle1,
              ),
              onBoarding(
                image: OstoreImagesStrings.onBoardingShipping,
                title: OstoreTextStrings.onBoardingTitle2,
                subTitle: OstoreTextStrings.onBoardingSubTitle2,
              ),
            ],
          ),

          //skip button
          const onBoardingSkipButton(),

          //page indicator
          DotIndicator(),

          //next button
          const NextButton(),
        ],
      ),
    );
  }
}
