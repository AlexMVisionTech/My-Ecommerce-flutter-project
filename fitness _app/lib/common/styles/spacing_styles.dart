import 'package:e_shop/features/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MySpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight,
    left: MySizes.defaultSpace,
    bottom: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
  );
}
