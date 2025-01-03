import 'package:flutter/material.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/sizeds.dart';

class OstoreVerticalImageTextItem extends StatelessWidget {
  const OstoreVerticalImageTextItem({
    super.key,
    required this.image,
    required this.text,
    this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String image;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: OstoreSizes.spaceBtwItems,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(
                OstoreSizes.sm,
              ),
              decoration: BoxDecoration(
                color: backgroundColor ?? OstoreColors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image(
                fit: BoxFit.cover,
                color: textColor ?? OstoreColors.darkGrey,
                image: AssetImage(
                  image,
                ),
              ),
            ),
            const SizedBox(
              height: OstoreSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium?.apply(
                      color: textColor ?? OstoreColors.textWhite,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
