import 'package:flutter/material.dart';

class SizeConfig {
// Initialize _mediaQueryData with a default value
  static MediaQueryData _mediaQueryData = const MediaQueryData();

  void init(BuildContext context) {
    // Initialize _mediaQueryData with the actual MediaQuery data
    _mediaQueryData = MediaQuery.of(context);

    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = (screenWidth! / 100);
    blockSizeVertical = (screenHeight! / 100);
  }

  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
}
