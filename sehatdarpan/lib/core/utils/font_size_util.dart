import 'package:flutter/material.dart';

class FontSizeUtil {
  static double getResponsiveFontSize(
      BuildContext context, double baseFontSize) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double scaleFactor = MediaQuery.of(context).textScaleFactor;
    double responsiveFontSize = baseFontSize * (screenWidth / 375.0);
    responsiveFontSize =
        responsiveFontSize.clamp(baseFontSize * 0.85, baseFontSize * 1.2);
    return responsiveFontSize * scaleFactor;
  }
}
