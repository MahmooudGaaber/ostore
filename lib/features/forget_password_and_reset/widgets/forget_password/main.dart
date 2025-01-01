import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/util/constant/text_strings.dart';

class ForgetPasswordMain extends StatelessWidget {
  const ForgetPasswordMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: OstoreTextStrings.email,
        prefixIcon: Icon(Iconsax.direct_right),
      ),
    );
  }
}
