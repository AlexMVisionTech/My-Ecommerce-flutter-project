import 'package:e_shop/features/utils/constants/image.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: MySizes.md,
              height: MySizes.md,
              image: AssetImage(MyImages.google),
            ),
          ),
        ),
        const SizedBox(
          width: MySizes.spacebtwnItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: MySizes.md,
              height: MySizes.md,
              image: AssetImage(MyImages.facebook),
            ),
          ),
        ),
        const SizedBox(
          width: MySizes.spacebtwnItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: MySizes.md,
              height: MySizes.md,
              image: AssetImage(MyImages.instagram),
            ),
          ),
        ),
        const SizedBox(
          height: MySizes.spacebtwnSections,
        ),
      ],
    );
  }
}
