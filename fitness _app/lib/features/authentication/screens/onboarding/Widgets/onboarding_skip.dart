import 'package:e_shop/features/authentication/controllers/Controllers_onboarding/onboardcontoller.dart';
import 'package:e_shop/features/utils/constants/device_utility.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MyDeviceUtils.getAppBarHeight(),
      right: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
