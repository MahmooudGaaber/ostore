import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostore/util/constant/sizeds.dart';
import 'package:ostore/util/constant/text_strings.dart';

class SignUpMainForm extends StatelessWidget {
  const SignUpMainForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: OstoreTextStrings.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: OstoreSizes.spaceBtwItems),
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: OstoreTextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          //user name
          const SizedBox(height: OstoreSizes.spaceBtwFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: OstoreTextStrings.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          // email
          const SizedBox(height: OstoreSizes.spaceBtwFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: OstoreTextStrings.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          //phone number
          const SizedBox(height: OstoreSizes.spaceBtwFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: OstoreTextStrings.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          // password
          const SizedBox(height: OstoreSizes.spaceBtwFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: OstoreTextStrings.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.eye_slash),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
