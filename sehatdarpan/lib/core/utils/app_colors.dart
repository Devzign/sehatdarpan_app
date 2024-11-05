import 'package:flutter/material.dart';

class AppColor {
  // Primary Colors (Green Theme based on #50AC6A)
  static const Color primaryGreen = Color(0xFF50AC6A); // Main primary shade
  static const Color lightAccentGreen = Color(0xFF73C18A); // Light accent shade
  static const Color darkPrimaryGreen = Color(0xFF3A8E57); // Darker shade for dark mode
  static const Color accentGreen = Color(0xFF39844A); // Deeper accent green

  // Neutral Grays
  static const Color lightGray = Color(0xFFF5F5F5); // Background for light mode
  static const Color mediumGray = Color(0xFF96989A); // Neutral gray for borders, separators
  static const Color darkGray = Color(0xFF4E4B66); // Text or icons in dark mode
  static const Color extraLightGray = Color(0xFFE8E8E8); // Light mode background/hover

  // Background Colors
  static const Color lightBackground = Color(0xFFFFFFFF); // Light theme background
  static const Color darkBackground = Color(0xFF1C1B1F); // Dark theme background

  // Text Colors
  static const Color darkText = Color(0xFF000000); // Text color for light theme
  static const Color lightText = Color(0xFFFFFFFF); // Text color for dark theme

  // Accent Colors
  static const Color warningRed = Color(0xFFFF7475); // Accent color for warnings or errors
  static const Color highlightOrange = Color(0xFFFFA030); // Accent color for highlights
  static const Color coolBlue = Color(0xFF252C70); // Secondary accent color for icons or highlights

  // Function to add opacity to any color
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }
}
