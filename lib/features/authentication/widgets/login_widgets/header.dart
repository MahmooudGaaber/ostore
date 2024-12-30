import 'package:flutter/material.dart';
import 'package:ostore/util/constant/images_strings.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 150,
          image: AssetImage(OstoreImagesStrings.logo),
        ),
        Text(
          OstoreTextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: OstoreSizes.sm),
        Text(
          OstoreTextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: OstoreSizes.spaceBtwSection),
      ],
    );
  }
}
