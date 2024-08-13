import 'package:flutter/material.dart';


class MyRoundedImage extends StatelessWidget {
  const MyRoundedImage
({super.key,
this.border,
this.padding,
this.applyImageRadius=false,
this.onPressed,
this.width=150,
this.height=158,
this.fit=BoxFit.contain,
this.backgroundColor=Colors.white,
this.isNetworkingImage=false,
required this.imageurl, 
required this.borderRadius, 


}
);
final double?width, height;
final VoidCallback? onPressed;
final EdgeInsetsGeometry?padding;
final BoxFit? fit;
final String imageurl;
final bool applyImageRadius;
final BoxBorder? border;
final Color backgroundColor;
final bool isNetworkingImage; 
final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,

        decoration: BoxDecoration(border: border,color: backgroundColor,borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(//ClipRRect adds the property of border radius to and image
          //borderRadius:applyImageRadius ? BorderRadius.circular(borderRadius):BorderRadius.zero,
           borderRadius: BorderRadius.circular(20.0),
          child: Image(fit: fit,image: isNetworkingImage ? NetworkImage(imageurl) : AssetImage(imageurl) as ImageProvider,),
          ),
      
      
      ),
    );
  }
}