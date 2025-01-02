import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/device/device_utility.dart';

class OstoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OstoreAppBar({super.key, required this.data});
  final OstoreAppBarData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: OstoreSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: data.showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left),
              )
            : data.leadingIcon != null
                ? IconButton(
                    onPressed: data.onLeadingTap,
                    icon: Icon(data.leadingIcon),
                  )
                : null,
        title: data.title,
        actions: data.actions,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(OstoreDeviceUtility.getScreenHeight());
}

class OstoreAppBarData {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingTap;

  OstoreAppBarData({
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.onLeadingTap,
    this.actions,
  });
}
