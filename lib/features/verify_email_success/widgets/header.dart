import 'package:flutter/material.dart';
import 'package:ostore/util/helper/helper_function.dart';

class VerifyAndSuccesseHeader extends StatelessWidget {
  const VerifyAndSuccesseHeader({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        image,
      ),
      width: OstoreHelperFunction.screenWidth(context) * 0.6,
    );
  }
}
