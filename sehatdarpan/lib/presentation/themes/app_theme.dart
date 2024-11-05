import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: AppColor.primaryGreen,
  scaffoldBackgroundColor: AppColor.lightBackground,
  fontFamily:'Nunito',
  colorScheme: const ColorScheme.light(
    primary: AppColor.primaryGreen,
    secondary: AppColor.accentGreen,
    background: AppColor.lightBackground,
    surface: AppColor.lightGray,
    error: AppColor.warningRed,
    onPrimary: AppColor.lightText,
    onSecondary: AppColor.darkText,
    onBackground: AppColor.darkText,
    onSurface: AppColor.darkText,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColor.darkText),
    bodyMedium: TextStyle(color: AppColor.darkGray),
  ),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: AppColor.darkPrimaryGreen,
  scaffoldBackgroundColor: AppColor.darkBackground,
  fontFamily:'Nunito',
  colorScheme: const ColorScheme.dark(
    primary: AppColor.darkPrimaryGreen,
    secondary: AppColor.accentGreen,
    background: AppColor.darkBackground,
    surface: AppColor.darkGray,
    error: AppColor.warningRed,
    onPrimary: AppColor.darkText,
    onSecondary: AppColor.lightText,
    onBackground: AppColor.lightText,
    onSurface: AppColor.lightText,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColor.lightText),
    bodyMedium: TextStyle(color: AppColor.mediumGray),
  ),
);

