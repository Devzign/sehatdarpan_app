import 'package:flutter/material.dart';

class DeviceUtils {
  static bool isTabletOrDesktop(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide > 600;
  }
}
