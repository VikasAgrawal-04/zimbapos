import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/constants/kcolors.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: KColors.yellowColor,
    useMaterial3: true,
    scaffoldBackgroundColor: KColors.whiteColor,
    fontFamily: 'DM Sans',
    iconTheme: IconThemeData(color: KColors.iconColor),
    dividerTheme: DividerThemeData(color: KColors.greyFill, thickness: 2.px),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: KColors.whiteColor,
      actionsIconTheme: IconThemeData(color: KColors.blackColor, size: 18.sp),
      titleTextStyle: TextStyle(
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
          color: KColors.blackColor),
    ),
    textTheme: TextTheme(
        displayLarge: TextStyle(
            color: KColors.blackColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700),
        displayMedium: TextStyle(
            color: KColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w700),
        displaySmall: TextStyle(
            color: KColors.blackColor,
            fontSize: 11.sp,
            fontWeight: FontWeight.w700),
        titleLarge: TextStyle(
            color: KColors.blackColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700),
        titleMedium: TextStyle(
            color: KColors.blackColor,
            fontSize: 10.5.sp,
            fontWeight: FontWeight.w700),
        titleSmall: TextStyle(
            color: KColors.blackColor,
            fontSize: 8.sp,
            fontWeight: FontWeight.w700),
        headlineLarge: TextStyle(
            color: KColors.blackColor,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500),
        headlineMedium: TextStyle(
          color: KColors.blackColor,
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
            color: KColors.blackColor,
            fontSize: 11.sp,
            fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(
            color: KColors.blackColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(
            color: KColors.blackColor,
            fontSize: 10.sp,
            fontWeight: FontWeight.w500),
        bodySmall: TextStyle(
            color: KColors.blackColor,
            fontSize: 8.sp,
            fontWeight: FontWeight.w500)),
  );
}
