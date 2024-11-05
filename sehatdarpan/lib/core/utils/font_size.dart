import 'package:flutter/cupertino.dart';

class FontSizeUtil {
  static double getResponsiveFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    double smallDeviceThreshold = 320.0;
    double tabletThreshold = 600.0;

    if (screenWidth <= smallDeviceThreshold) {
      return baseFontSize - 2.0;
    } else if (screenWidth >= tabletThreshold) {
      return baseFontSize + 2.0;
    } else {
      return baseFontSize;
    }
  }
}
