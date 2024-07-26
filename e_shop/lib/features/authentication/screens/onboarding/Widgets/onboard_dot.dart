import 'package:e_shop/features/authentication/controllers/Controllers_onboarding/onboardcontoller.dart';
import 'package:e_shop/features/utils/constants/device_utility.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigationOperator extends StatelessWidget {
  const DotNavigationOperator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    // final dark = MyHelperFunction().isDarkMode(context);

    return Positioned(
        bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: MySizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: Colors.blue, dotHeight: 6),
        ));
  }
}
