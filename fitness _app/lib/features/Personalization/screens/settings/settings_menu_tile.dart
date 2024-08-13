import 'package:flutter/material.dart';
class MySettingMenuTile extends StatelessWidget {
  const MySettingMenuTile({super.key,
  required this.icon,
  required this.subtitle,
  required this.title,
  this.trailing,
  this.onTap,
 
  });
  final IconData icon;
  final String title,subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: 28,color:Colors.white,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.white)),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.white)),
      trailing:trailing ,
      onTap: onTap,
      
    );
  }
}