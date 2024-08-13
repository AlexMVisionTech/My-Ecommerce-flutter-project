import 'package:e_shop/common/widgets/images/myroundedimage.dart';
import 'package:e_shop/features/utils/constants/image.dart';
import 'package:flutter/material.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Center the image
          const MyRoundedImage(
            imageurl: MyImages.user,
            width: 100,
            height: 100,
            borderRadius: 50.0,
          ),
          const SizedBox(height: 8.0), // Add space between image and text
          
          Text(
            'Good morning Alex,',
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            'Welcome back!',
            style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

