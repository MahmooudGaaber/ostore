import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostore/features/verify_email_success/screen/verify_email.dart';
import 'package:ostore/util/constant/text_strings.dart';

class SignUpCreateAccountButton extends StatelessWidget {
  const SignUpCreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.to(() => const VerifyEmailView());
        },
        child: const Text(OstoreTextStrings.createAccount),
      ),
    );
  }
}
