import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/app_constants.dart';
import '../colors/colors.dart';

class TextStyleConstants {
  static TextStyle thinStyle({
    double? fontSize,
    color,
    double? height,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: fontSize?.sp ?? 16.sp,
        color: color ?? ColorConstants.black,
        fontFamily: ApplicationConstants.fontFamily,
        fontWeight: FontWeight.w100,
        height: height,
        decoration: decoration ?? TextDecoration.none,
      );

  static TextStyle lightStyle({
    double? fontSize,
    color,
    double? height,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: fontSize?.sp ?? 16.sp,
        color: color ?? ColorConstants.black,
        fontFamily: ApplicationConstants.fontFamily,
        fontWeight: FontWeight.w300,
        height: height,
        decoration: decoration ?? TextDecoration.none,
      );

  static TextStyle regularStyle({
    double? fontSize,
    color,
    double? height,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: fontSize?.sp ?? 16.sp,
        color: color ?? ColorConstants.black,
        fontFamily: ApplicationConstants.fontFamily,
        fontWeight: FontWeight.w400,
        height: height,
        decoration: decoration ?? TextDecoration.none,
      );

  static TextStyle mediumStyle({
    double? fontSize,
    color,
    double? height,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: fontSize?.sp ?? 16.sp,
        color: color ?? ColorConstants.black,
        fontFamily: ApplicationConstants.fontFamily,
        fontWeight: FontWeight.w500,
        height: height,
        decoration: decoration ?? TextDecoration.none,
      );

  static TextStyle semiBoldStyle({
    double? fontSize,
    color,
    double? height,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: fontSize?.sp ?? 16.sp,
        color: color ?? ColorConstants.black,
        fontFamily: ApplicationConstants.fontFamily,
        fontWeight: FontWeight.w600,
        height: height,
        decoration: decoration ?? TextDecoration.none,
      );

  static TextStyle boldStyle({
    double? fontSize,
    color,
    double? height,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: fontSize?.sp ?? 16.sp,
        color: color ?? ColorConstants.black,
        fontFamily: ApplicationConstants.fontFamily,
        fontWeight: FontWeight.w700,
        height: height,
        decoration: decoration ?? TextDecoration.none,
      );

  static TextStyle extraBoldStyle({
    double? fontSize,
    color,
    double? height,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontSize: fontSize?.sp ?? 16.sp,
        color: color ?? ColorConstants.black,
        fontFamily: ApplicationConstants.fontFamily,
        fontWeight: FontWeight.w800,
        height: height,
        decoration: decoration ?? TextDecoration.none,
      );
}
