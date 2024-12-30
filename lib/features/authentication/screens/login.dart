import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/common/styles/spacing_style.dart';
import 'package:ostore/features/authentication/widgets/login_widgets/divide_item.dart';
import 'package:ostore/features/authentication/widgets/login_widgets/header.dart';
import 'package:ostore/features/authentication/widgets/login_widgets/main_form.dart';
import 'package:ostore/features/authentication/widgets/login_widgets/social_login.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/images_strings.dart';
import 'package:ostore/util/constant/sizeds.dart';

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
              DividerItem(),

              //social media login
              SocialLogIn(),
            ],
          ),
        ),
      ),
    );
  }
}
