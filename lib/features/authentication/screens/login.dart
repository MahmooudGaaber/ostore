import 'package:flutter/material.dart';
import 'package:ostore/common/styles/spacing_style.dart';
import 'package:ostore/common/widgets/auth/form_divider.dart';
import 'package:ostore/common/widgets/auth/social_media.dart';
import 'package:ostore/features/authentication/widgets/login_widgets/header.dart';
import 'package:ostore/features/authentication/widgets/login_widgets/main_form.dart';
import 'package:ostore/util/constant/text_strings.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: OstoreSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //logo title && subTitle
              Header(),

              // main form with email and password
              MainForm(),

              //divider
              OstoreFormDivider(dividerText: OstoreTextStrings.or),

              //social media login
              OstoreSocialMedia(),
            ],
          ),
        ),
      ),
    );
  }
}
