import 'package:e_shop/features/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/Sign_up Widgets/signup.dart';

class CreateAccountBTn extends StatelessWidget {
  const CreateAccountBTn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: OutlinedButton(
            onPressed: () {
              Get.to(() => const SignUpScreen());
            },
            child: const Text(MyText.createAccountBtn)));
  }
}