import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostore/features/authentication/screens/login.dart';
import 'package:ostore/features/verify_email_success/widgets/header.dart';
import 'package:ostore/features/verify_email_success/widgets/middle.dart';
import 'package:ostore/features/verify_email_success/widgets/verify_footer.dart';
import 'package:ostore/util/constant/images_strings.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const LoginView());
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OstoreSizes.defaultSpace),
          child: Column(
            children: [
              //image
              VerifyAndSuccesseHeader(
                image: OstoreImagesStrings.verifyEmail,
              ),
              SizedBox(height: OstoreSizes.spaceBtwSection),

              // title & subTitle
              VerifyAndSuccessMiddle(
                title: OstoreTextStrings.confirmEmailTitle,
                subTitle: OstoreTextStrings.confirmEmailSubTitle,
              ),

              // buttons
              VerifyMailFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
