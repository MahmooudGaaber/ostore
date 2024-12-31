import 'package:flutter/material.dart';
import 'package:ostore/util/constant/sizeds.dart';

class VerifyAndSuccessMiddle extends StatelessWidget {
  const VerifyAndSuccessMiddle({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: OstoreSizes.spaceBtwSection),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
