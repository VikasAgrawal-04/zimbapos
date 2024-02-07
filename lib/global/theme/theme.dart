import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/constants/kcolors.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: KColors.whiteColor,
    fontFamily: 'DM Sans',
    iconTheme: IconThemeData(color: KColors.iconColor),
    dividerTheme: DividerThemeData(color: KColors.greyFill, thickness: 2.px),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 1,
      backgroundColor: KColors.whiteColor,
      titleTextStyle:
          const TextStyle(fontFamily: 'DM Sans', fontWeight: FontWeight.w700),
    ),
    textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 40.px, fontWeight: FontWeight.w700),
        displayMedium: TextStyle(fontSize: 20.px, fontWeight: FontWeight.w700),
        displaySmall: TextStyle(fontSize: 18.px, fontWeight: FontWeight.w700),
        titleLarge: TextStyle(fontSize: 16.px, fontWeight: FontWeight.w700),
        titleMedium: TextStyle(fontSize: 14.px, fontWeight: FontWeight.w700),
        titleSmall: TextStyle(fontSize: 12.px, fontWeight: FontWeight.w700),
        headlineLarge: TextStyle(fontSize: 40.px, fontWeight: FontWeight.w500),
        headlineMedium: TextStyle(fontSize: 22.px, fontWeight: FontWeight.w500),
        headlineSmall: TextStyle(fontSize: 14.px, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(fontSize: 16.px, fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(fontSize: 14.px, fontWeight: FontWeight.w400),
        bodySmall: TextStyle(fontSize: 12.px, fontWeight: FontWeight.w400)),
  );
}
