import 'package:e_shop/features/authentication/screens/Sign_up%20Widgets/signup.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:e_shop/features/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: MySizes.spacebtwnSections),
      child: Column(
        children: [
          //Email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MyText.email),
          ),
          const SizedBox(
            height: MySizes.spacebtwnItems,
          ),
          //password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: MyText.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: MySizes.spacebtwnItems,
          ),

          //Remember Me and Forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(MyText.rememberMe),
                ],
              ),
              //forget password
              TextButton(
                  onPressed: () {}, child: const Text(MyText.forgetPassword)),
            ],
          ),
          const SizedBox(
            height: MySizes.spacebtwnSections,
          ),

          //sign in Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(MyText.signIn))),
          //Create Account Button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: const Text(MyText.createAccountBtn))),
        ],
      ),
    ));
  }
}
