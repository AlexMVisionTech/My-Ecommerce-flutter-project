import 'package:e_shop/features/utils/constants/device_utility.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key,
  this.title,
  this.actions,
  this.leadingIcon,
  this.leadingOnPressed,
  this.showBackArrow=false,
  this.color,
  
  });


  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color?color;

  

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.symmetric(horizontal: MySizes.md),
     child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow? IconButton(onPressed: ()=>Get.back(), icon:const Icon(Iconsax.arrow_left))  :leadingIcon !=null? IconButton(onPressed: leadingOnPressed,icon: Icon(leadingIcon),) :null,
        title: title,
        actions:actions,
        backgroundColor:color,
      
      ),
    );
  }

 
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(MyDeviceUtils.getAppBarHeight());
  
}