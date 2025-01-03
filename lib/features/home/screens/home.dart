// ignore_for_file: deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ostore/features/home/widgets/homa_screen_popular_Category_item.dart';
import 'package:ostore/features/home/widgets/home_app_bar.dart';
import 'package:ostore/features/home/widgets/home_screen_primery_header.dart';
import 'package:ostore/features/home/widgets/home_screen_search_bar.dart';
import 'package:ostore/features/home/widgets/rounded_panner.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/images_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OstorePrimeryHeader(
              child: Column(
                children: [
                  // App Bar
                  HomeScreenAppBar(),
                  SizedBox(
                    height: OstoreSizes.spaceBtwSection,
                  ),

                  //search bar
                  HomeScreenSearchBar(),
                  SizedBox(
                    height: OstoreSizes.spaceBtwSection,
                  ),

                  //categories
                  HomeScreenPopularCategoryItem(),
                  SizedBox(
                    height: OstoreSizes.spaceBtwSection,
                  ),
                ],
              ),
            ),

            //body --
            Padding(
              padding: const EdgeInsets.all(OstoreSizes.defaultSpace),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.9,
                    ),
                    items: [
                      OstorePannersRoundedImages(
                        data: OstorePannersRounedeImagesData(
                          imageUrl: OstoreImagesStrings.homeScreenPanner1,
                        ),
                      ),
                      OstorePannersRoundedImages(
                        data: OstorePannersRounedeImagesData(
                          imageUrl: OstoreImagesStrings.homeScreenPanner1,
                        ),
                      ),
                      OstorePannersRoundedImages(
                        data: OstorePannersRounedeImagesData(
                          imageUrl: OstoreImagesStrings.homeScreenPanner1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: OstoreSizes.spaceBtwItems,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
