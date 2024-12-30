import 'package:flutter/material.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/helper/helper_function.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: OstoreSizes.defaultSpace,
      ),
      child: Column(
        children: [
          Image(
            width: OstoreHelperFunction.screenWidth(context) * 0.8,
            height: OstoreHelperFunction.screenHeight(context) * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: OstoreSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
