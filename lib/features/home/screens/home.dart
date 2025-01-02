// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ostore/features/home/widgets/home_app_bar.dart';
import 'package:ostore/features/home/widgets/home_screen_primery_header.dart';
import 'package:ostore/features/home/widgets/home_screen_search_bar.dart';
import 'package:ostore/util/constant/sizeds.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OstorePrimeryHeader(
              child: Column(
                children: [
                  // App Bar
                  HomeScreenAppBar(),
                  SizedBox(
                    height: OstoreSizes.spaceBtwSection,
                  ),

                  //search bar
                  HomeScreenSearchBar(),

                  //categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
