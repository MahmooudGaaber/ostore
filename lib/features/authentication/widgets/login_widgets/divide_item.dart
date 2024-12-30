import 'package:flutter/material.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class DividerItem extends StatelessWidget {
  const DividerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          OstoreTextStrings.or,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
        const SizedBox(height: OstoreSizes.spaceBtwSection),
      ],
    );
  }
}
