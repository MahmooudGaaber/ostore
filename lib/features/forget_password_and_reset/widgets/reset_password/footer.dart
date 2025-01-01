import 'package:flutter/material.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class ResetPasswordFooter extends StatelessWidget {
  const ResetPasswordFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: OstoreSizes.spaceBtwSection),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(OstoreTextStrings.done),
          ),
        ),
        const SizedBox(height: OstoreSizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(OstoreTextStrings.resendEmail),
          ),
        ),
      ],
    );
  }
}
