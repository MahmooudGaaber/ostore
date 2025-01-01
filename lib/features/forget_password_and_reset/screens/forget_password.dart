// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ostore/features/forget_password_and_reset/widgets/forget_password/footer.dart';
import 'package:ostore/features/forget_password_and_reset/widgets/forget_password/header.dart';
import 'package:ostore/features/forget_password_and_reset/widgets/forget_password/main.dart';
import 'package:ostore/util/constant/sizeds.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OstoreSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              //header
              ForgetPasswordHeader(),

              // input field
              ForgetPasswordMain(),
              SizedBox(height: OstoreSizes.spaceBtwSection * 2),

              // button
              ForgetPasswordFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
