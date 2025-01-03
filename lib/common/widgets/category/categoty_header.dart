import 'package:flutter/material.dart';
import 'package:ostore/util/constant/text_strings.dart';

class OstoreCategorySectionHeader extends StatelessWidget {
  const OstoreCategorySectionHeader({
    super.key,
    required this.title,
    this.buttonText = OstoreTextStrings.seeAll,
    this.onPressed,
    this.showButton = true,
    this.textColor,
  });

  final String title;
  final String buttonText;
  final void Function()? onPressed;
  final bool showButton;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headlineSmall?.apply(
                color: textColor,
              ),
        ),
        if (showButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: Theme.of(context).textTheme.bodySmall?.apply(
                    color: textColor,
                  ),
            ),
          ),
      ],
    );
  }
}
