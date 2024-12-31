import 'package:flutter/material.dart';
import 'package:ostore/common/widgets/auth/form_divider.dart';
import 'package:ostore/common/widgets/auth/social_media.dart';
import 'package:ostore/features/authentication/widgets/signup_widgets/check_box_widget.dart';
import 'package:ostore/features/authentication/widgets/signup_widgets/create_account_button.dart';
import 'package:ostore/features/authentication/widgets/signup_widgets/main_form.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            OstoreSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                OstoreTextStrings.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: OstoreSizes.spaceBtwSection),

              //main form
              const SignUpMainForm(),

              //terms&conditions checkbox
              const SizedBox(height: OstoreSizes.spaceBtwSection),
              const SignUpCheckBox(),

              //signup button
              const SizedBox(height: OstoreSizes.spaceBtwFields),
              const SignUpCreateAccountButton(),
              const SizedBox(height: OstoreSizes.spaceBtwSection),

              //divider
              const OstoreFormDivider(dividerText: OstoreTextStrings.or),

              //social media login
              const OstoreSocialMedia(),
            ],
          ),
        ),
      ),
    );
  }
}
