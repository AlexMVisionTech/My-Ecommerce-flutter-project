import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:e_shop/features/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(
                MyText.signuptitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MySizes.spacebtwnSections,
              ),
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: MyText.firstName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      const SizedBox(
                        width: MySizes.md,
                      ),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: MyText.lasttName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: MySizes.spacebtwnItems,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MyText.userName,
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  const SizedBox(
                    height: MySizes.spacebtwnItems,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MyText.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(
                    height: MySizes.spacebtwnItems,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MyText.phoneNumber,
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  const SizedBox(
                    height: MySizes.spacebtwnItems,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MyText.password,
                        prefixIcon: Icon(Iconsax.password_check)),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
