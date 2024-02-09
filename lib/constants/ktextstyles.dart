import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'kcolors.dart';

class KTextStyles {
  //for appbars
  static TextStyle kAppBarHeader = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: KColors.white,
    fontFamily: "DM Sans",
    // Add other properties as needed
  );
  static TextStyle kBlackAppBarHeader = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: KColors.textColor,
    fontFamily: "DM Sans",
    // Add other properties as needed
  );

  //for header
  static TextStyle kHeader = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: KColors.textColor,
    fontFamily: "DM Sans",
    // Add other properties as needed
  );

  static TextStyle kHeaderSub = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: KColors.textColor,
    fontFamily: "DM Sans",
    // Add other properties as needed
  );

  //for titles
  static TextStyle kTitle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: KColors.textColor,
    fontFamily: "DM Sans",
    // Add other properties as needed
  );
  //for subtitles
  static TextStyle kSubtitle = TextStyle(
    fontSize: 16.sp,
    color: KColors.textColor,
    fontWeight: FontWeight.normal,
    fontFamily: "DM Sans",
    // Add other properties as needed
  );

  //for buttons
  static TextStyle kButtonText = TextStyle(
    color: KColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    fontFamily: "DM Sans",
  );

  //for custom snackbar
  //sub title or in message
  static TextStyle kSnackSubtitle = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontFamily: "DM Sans",
  );
  //for snackbar title
  static TextStyle kSnackTitle = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: "DM Sans",
  );
  //for custom alert dialog box
  //title
  static TextStyle kAlertTitle = TextStyle(
    fontSize: 18.sp,
    color: Colors.black87,
    fontWeight: FontWeight.w700,
    fontFamily: "DM Sans",
  );
  //subtitle
  static TextStyle kAlertSubtitle = TextStyle(
    fontSize: 16.sp,
    color: Colors.black87,
    fontWeight: FontWeight.w500,
    fontFamily: "DM Sans",
  );
  //ok button in alert
  static TextStyle kAlertOkButton = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: "DM Sans",
  );
  //cancel button in alert
  static TextStyle kAlertCancelButton = TextStyle(
    fontSize: 16.sp,
    color: KColors.textColor,
    fontWeight: FontWeight.w700,
    fontFamily: "DM Sans",
  );

  //for carousel slider
  //title
  static TextStyle kCarrSubtitle = TextStyle(
    fontSize: 28.sp,
    color: KColors.textColor,
    fontWeight: FontWeight.bold,
    fontFamily: "DM Sans",
  );
  //sub title
  static TextStyle kCarrTitle = TextStyle(
    fontSize: 22.sp,
    color: KColors.textColor,
    fontWeight: FontWeight.w600,
    fontFamily: "DM Sans",
  );

  //for Nav bar
  //active nav text
  static TextStyle kactiveNav = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: KColors.white,
    fontFamily: "DM Sans",
    // Add other properties as needed
  );
  //In-active nav text
  static TextStyle kinActiveNav = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: KColors.white,
    fontFamily: "DM Sans",
    // Add other properties as needed
  );
}
