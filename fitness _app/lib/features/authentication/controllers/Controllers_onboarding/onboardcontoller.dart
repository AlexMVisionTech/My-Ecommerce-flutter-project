import 'package:e_shop/features/authentication/screens/Login/login.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Updating the current index when the page is scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  } // Jump to the specific dot selected page

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  } // For updating the current index and jump to next page

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  } // For updating the current index and jump to last page
}
