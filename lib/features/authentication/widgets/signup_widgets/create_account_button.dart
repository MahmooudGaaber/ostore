import 'package:flutter/material.dart';
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
        onPressed: () {},
        child: const Text(OstoreTextStrings.createAccount),
      ),
    );
  }
}
