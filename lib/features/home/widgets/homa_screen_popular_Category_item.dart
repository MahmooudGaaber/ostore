// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ostore/common/widgets/category/categoty_header.dart';
import 'package:ostore/features/home/widgets/popular_category_list_view.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class HomeScreenPopularCategoryItem extends StatelessWidget {
  const HomeScreenPopularCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: OstoreSizes.defaultSpace,
      ),
      child: Column(
        children: [
          //categories header
          OstoreCategorySectionHeader(
            title: OstoreTextStrings.categories,
            showButton: false,
            textColor: OstoreColors.textWhite,
          ),

          SizedBox(
            height: OstoreSizes.spaceBtwItems,
          ),

          //categories list
          OstoreHomeScreenPopularCategoriesListView(),
        ],
      ),
    );
  }
}
