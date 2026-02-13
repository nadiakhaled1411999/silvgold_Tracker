import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
class AppStyles {
  AppStyles._();
  static final AppStyles _instance = AppStyles._();
  factory AppStyles() => _instance;
  static TextStyle getMediumStyle({
    double fontSize = 14,
    Color? color = AppColors.blackColor,
    FontWeight? fontWeight = FontWeight.w500,
    //String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        // fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );
       static TextStyle getSemiBoldStyle({
    double fontSize = 24,
    Color? color = AppColors.goldColor,
    FontWeight? fontWeight = FontWeight.w600,
    //String fontFamily = FontFamilies.interFamily,

    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        // fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );

       static TextStyle getBoldStyle({
    double fontSize = 21,
    Color? color = AppColors.goldColor,
    FontWeight? fontWeight = FontWeight.w700,
    //String fontFamily = FontFamilies.interFamily,

    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        // fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );

}
