import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostore/features/forget_password_and_reset/screens/reset_password.dart';
import 'package:ostore/util/constant/text_strings.dart';

class ForgetPasswordFooter extends StatelessWidget {
  const ForgetPasswordFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.off(() => const ResetPasswordView());
        },
        child: Text(OstoreTextStrings.submit),
      ),
    );
  }
}
