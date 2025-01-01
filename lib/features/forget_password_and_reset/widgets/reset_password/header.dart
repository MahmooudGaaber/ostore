import 'package:flutter/material.dart';
import 'package:ostore/util/helper/helper_function.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({
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
