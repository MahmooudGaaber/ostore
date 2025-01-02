// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/common/widgets/app_bar/custom_app_bar.dart';
import 'package:ostore/features/home/widgets/home_screen_primery_header.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OstorePrimeryHeader(
              child: Column(
                children: [
                  OstoreAppBar(
                    data: OstoreAppBarData(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            OstoreTextStrings.homeAppBarTitle,
                            style:
                                Theme.of(context).textTheme.labelLarge!.apply(
                                      color: OstoreColors.grey,
                                    ),
                          ),
                          Text(
                            OstoreTextStrings.homeAppBarSubTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .apply(
                                  color: OstoreColors.white,
                                ),
                          ),
                        ],
                      ),
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.shopping_cart),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}