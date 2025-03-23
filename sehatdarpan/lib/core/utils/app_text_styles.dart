import 'package:flutter/material.dart';
import 'font_size_util.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle regular({Color color = AppColor.darkText, required BuildContext context, double fontSize = 16.0}) {
    return TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w400,
      color: color,
      fontSize: FontSizeUtil.getResponsiveFontSize(context, fontSize),
    );
  }

  static TextStyle bold({Color color = AppColor.darkText, required BuildContext context, double fontSize = 16.0}) {
    return TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w700,
      color: color,
      fontSize: FontSizeUtil.getResponsiveFontSize(context, fontSize),
    );
  }

  static TextStyle light({Color color = AppColor.darkText, required BuildContext context, double fontSize = 16.0}) {
    return TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w300,
      color: color,
      fontSize: FontSizeUtil.getResponsiveFontSize(context, fontSize),
    );
  }

  static TextStyle medium({Color color = AppColor.darkText, required BuildContext context, double fontSize = 16.0}) {
    return TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w500,
      color: color,
      fontSize: FontSizeUtil.getResponsiveFontSize(context, fontSize),
    );
  }

  static TextStyle semiBold({Color color = AppColor.darkText, required BuildContext context, double fontSize = 16.0}) {
    return TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w600,
      color: color,
      fontSize: FontSizeUtil.getResponsiveFontSize(context, fontSize),
    );
  }

  static TextStyle extraBold({Color color = AppColor.darkText, required BuildContext context, double fontSize = 16.0}) {
    return TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w800,
      color: color,
      fontSize: FontSizeUtil.getResponsiveFontSize(context, fontSize),
    );
  }

  // Heading Styles
  static TextStyle heading1({Color color = AppColor.darkText, required BuildContext context}) {
    return bold(color: color, context: context, fontSize: 24.0);
  }

  static TextStyle heading2({Color color = AppColor.darkText, required BuildContext context}) {
    return semiBold(color: color, context: context, fontSize: 20.0);
  }

  static TextStyle bodyText({Color color = AppColor.darkText, required BuildContext context}) {
    return regular(color: color, context: context, fontSize: 16.0);
  }

  static TextStyle caption({Color color = AppColor.mediumGray, required BuildContext context}) {
    return regular(color: color, context: context, fontSize: 12.0);
  }
}
