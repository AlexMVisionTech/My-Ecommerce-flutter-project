import 'package:e_shop/common/styles/spacing_styles.dart';
import 'package:e_shop/features/authentication/screens/Login/widgets/login_form.dart';
import 'package:e_shop/features/authentication/screens/Login/widgets/login_header.dart';
import 'package:e_shop/features/utils/constants/formFooter.dart';
import 'package:e_shop/features/utils/constants/formdivider.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:e_shop/features/utils/constants/text_string.dart';
import 'package:e_shop/features/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        //Making it scrollable for small screens
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo,title and subtitle
              LoginHeader(dark: dark),
              //form
              const LoginForm(),
              //Divider
              LoginDivider(dark: dark),
              const SizedBox(
                height: MySizes.spacebtwnSections,
              ),
              //footer
              const LoginFooter(),
              const SizedBox(
                height: MySizes.spacebtwnItems,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  MyText.createdby,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
