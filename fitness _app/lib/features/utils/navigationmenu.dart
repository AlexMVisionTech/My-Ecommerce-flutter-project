
import 'package:e_shop/features/Personalization/screens/settings/settings.dart';
import 'package:e_shop/features/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Navigationmenu extends StatelessWidget {
  const Navigationmenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    final darkMode=MyHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value=index,
          backgroundColor: darkMode? Colors.black:Colors.white,
          indicatorColor: darkMode? Colors.white.withOpacity(0.1):Colors.black.withOpacity(0.1),
           destinations:const [
            NavigationDestination(icon: Icon(Iconsax.home),label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.activity),label: 'Progress'),
            NavigationDestination(icon: Icon(Iconsax.heart),label: 'Nutrition'),
            NavigationDestination(icon: Icon(Iconsax.user),label: 'Profile'),
           ],
            ),
      ),
    body: Obx(()=>controller.screens[controller.selectedIndex.value])
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;
  final screens=[
    Container(color:Colors.blue,),
    Container(color:Colors.red,),
    Container(color:Colors.orange,),
    const SettingsScreen(),

  ];
}