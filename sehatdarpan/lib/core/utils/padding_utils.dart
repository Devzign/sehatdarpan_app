import 'package:flutter/cupertino.dart';

class PaddingUtil {
  static double getResponsivePadding(BuildContext context, double basePadding) {
    double screenWidth = MediaQuery.of(context).size.width;
    double smallDeviceThreshold = 320.0;
    double tabletThreshold = 600.0;

    if (screenWidth <= smallDeviceThreshold) {
      return basePadding - 2.0;
    } else if (screenWidth >= tabletThreshold) {
      return basePadding + 2.0;
    } else {
      return basePadding;
    }
  }

  static double padding4(BuildContext context) => getResponsivePadding(context, 4.0);
  static double padding8(BuildContext context) => getResponsivePadding(context, 8.0);
  static double padding16(BuildContext context) => getResponsivePadding(context, 16.0);
  static double padding24(BuildContext context) => getResponsivePadding(context, 24.0);
  static double padding32(BuildContext context) => getResponsivePadding(context, 32.0);
}
