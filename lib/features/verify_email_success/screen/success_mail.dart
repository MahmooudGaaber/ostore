import 'package:flutter/material.dart';
import 'package:ostore/common/styles/spacing_style.dart';
import 'package:ostore/features/verify_email_success/widgets/header.dart';
import 'package:ostore/features/verify_email_success/widgets/middle.dart';
import 'package:ostore/features/verify_email_success/widgets/success_footer.dart';
import 'package:ostore/util/constant/images_strings.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class SuccessMailView extends StatelessWidget {
  const SuccessMailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: OstoreSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //image
              VerifyAndSuccesseHeader(
                image: OstoreImagesStrings.verifyEmailSuccess,
              ),
              SizedBox(height: OstoreSizes.spaceBtwSection),

              // title & subTitle
              VerifyAndSuccessMiddle(
                title: OstoreTextStrings.youAccountCreatedTitle,
                subTitle: OstoreTextStrings.youAccountCreatedSubTitle,
              ),

              // buttons
              SuccessScreenFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
