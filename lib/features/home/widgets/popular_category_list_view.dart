import 'package:flutter/material.dart';
import 'package:ostore/common/widgets/category/vertical_image_text.dart';
import 'package:ostore/util/constant/images_strings.dart';

class OstoreHomeScreenPopularCategoriesListView extends StatelessWidget {
  const OstoreHomeScreenPopularCategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return OstoreVerticalImageTextItem(
            image: OstoreImagesStrings.facebookLogo,
            text: 'Category $index',
            onTap: () {},
          );
        },
      ),
    );
  }
}
