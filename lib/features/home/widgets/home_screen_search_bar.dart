import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';
import 'package:ostore/util/device/device_utility.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: OstoreSizes.defaultSpace,
      ),
      child: Container(
        width: OstoreDeviceUtility.getScreenWidth(),
        padding: const EdgeInsets.all(
          OstoreSizes.md,
        ),
        decoration: BoxDecoration(
          color: OstoreColors.transparent,
          border: Border.all(
            color: OstoreColors.grey,
          ),
          borderRadius: BorderRadius.circular(
            OstoreSizes.cardRadiusLg,
          ),
        ),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal_1),
            const SizedBox(
              width: OstoreSizes.spaceBtwItems,
            ),
            Text(
              OstoreTextStrings.search,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
