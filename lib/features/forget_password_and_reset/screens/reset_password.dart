import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/features/forget_password_and_reset/widgets/reset_password/footer.dart';
import 'package:ostore/features/forget_password_and_reset/widgets/reset_password/header.dart';
import 'package:ostore/features/forget_password_and_reset/widgets/reset_password/main.dart';
import 'package:ostore/util/constant/images_strings.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Iconsax.close_circle),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OstoreSizes.defaultSpace),
          child: Column(
            children: [
              // header
              ResetPasswordHeader(
                image: OstoreImagesStrings.verifyEmailSuccess,
              ),
              SizedBox(height: OstoreSizes.spaceBtwSection),

              // title & subTitle
              ResetPasswordMain(
                title: OstoreTextStrings.passwordResetEmailSend,
                subTitle: OstoreTextStrings.passwordResetEmailSendSubTitle,
              ),

              // buttons
              ResetPasswordFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
