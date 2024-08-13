import 'package:e_shop/common/Btns/createaccount.dart';
import 'package:e_shop/features/utils/constants/formFooter.dart';
import 'package:e_shop/features/utils/constants/formdivider.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:e_shop/features/utils/constants/text_string.dart';
import 'package:e_shop/features/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
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
                  Row(
                    children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text.rich(TextSpan(children: [
                    TextSpan(text: '${MyText.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: '${MyText.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark? Colors.white:Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: dark? Colors.white:Colors.blue,
                    )),
                    TextSpan(text: '${MyText.and} ',style: Theme.of(context).textTheme.bodySmall),
                     TextSpan(text: '${MyText.termsOfuse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark? Colors.white:Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: dark? Colors.white:Colors.blue,
                    )),
                  ])),
                  
                  ],
                  ),
                  const SizedBox(height:MySizes.spacebtwnItems),
                  const CreateAccountBTn(),
                  const SizedBox(height: MySizes.spacebtwnSections),
                  LoginDivider(dark:dark,),
                  const SizedBox(height: MySizes.spacebtwnSections),
                  const LoginFooter(),

                ],
                
              ))
            ],
          ),
        ),
      ),
    );
  }
}
