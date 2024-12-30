import 'package:flutter/material.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/images_strings.dart';
import 'package:ostore/util/constant/sizeds.dart';

class SocialLogIn extends StatelessWidget {
  const SocialLogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: OstoreSizes.spaceBtwSection * 2),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: OstoreColors.grey),
          ),
          child: const Image(
            height: OstoreSizes.iconMd,
            width: OstoreSizes.iconMd,
            image: AssetImage(OstoreImagesStrings.googleLogo),
          ),
        ),
        const SizedBox(width: OstoreSizes.sm),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: OstoreColors.grey),
          ),
          child: const Image(
            height: OstoreSizes.iconMd,
            width: OstoreSizes.iconMd,
            image: AssetImage(OstoreImagesStrings.facebookLogo),
          ),
        ),
      ],
    );
  }
}
