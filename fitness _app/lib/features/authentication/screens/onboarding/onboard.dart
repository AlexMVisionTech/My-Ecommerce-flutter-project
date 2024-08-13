import 'package:e_shop/features/authentication/controllers/Controllers_onboarding/onboardcontoller.dart';
import 'package:e_shop/features/authentication/screens/onboarding/Widgets/onboard_dot.dart';
import 'package:e_shop/features/authentication/screens/onboarding/Widgets/onboarding_page.dart';
import 'package:e_shop/features/authentication/screens/onboarding/Widgets/onboarding_skip.dart';
import 'package:e_shop/features/utils/constants/device_utility.dart';
import 'package:e_shop/features/utils/constants/image.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:e_shop/features/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

// Import the LoginScreen

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MyImages.onBoardImage1,
                title: MyText.onBoardingTitle1,
                subTitle: MyText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MyImages.onBoardImage2,
                title: MyText.onBoardingTitle2,
                subTitle: MyText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MyImages.onBoardImage3,
                title: MyText.onBoardingTitle3,
                subTitle: MyText.onBoardingSubTitle3,
              ),
            ],
          ),
          // Skip Button
          const OnboardingSkip(),
          const DotNavigationOperator(),
          const OnBoardingNextBtn(),
        ],
      ),
    );
  }
}

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: MySizes.defaultSpace,
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
