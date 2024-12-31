import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/features/authentication/screens/signup.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class MainForm extends StatelessWidget {
  const MainForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///email
          TextFormField(
            decoration: const InputDecoration(
              labelText: OstoreTextStrings.email,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),

          const SizedBox(height: OstoreSizes.spaceBtwFields),

          ///password
          TextFormField(
            decoration: const InputDecoration(
              labelText: OstoreTextStrings.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: OstoreSizes.spaceBtwFields / 2),

          /// remember me && forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// remember me
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    OstoreTextStrings.rememberMe,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              /// forgot password
              TextButton(
                onPressed: () {},
                child: const Text(OstoreTextStrings.forgotPassword),
              ),
            ],
          ),
          const SizedBox(height: OstoreSizes.spaceBtwSection),

          /// login button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(OstoreTextStrings.signIn),
            ),
          ),

          const SizedBox(height: OstoreSizes.spaceBtwFields),

          ///create account
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const SignUpView());
              },
              child: const Text(OstoreTextStrings.createAccount),
            ),
          ),
          const SizedBox(height: OstoreSizes.spaceBtwSection),
        ],
      ),
    );
  }
}
