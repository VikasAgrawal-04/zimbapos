import 'package:flutter/material.dart';

import 'kcolors.dart';

class KTextStyles {
  //for appbars
  static const TextStyle kAppBarHeader = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: KColors.white,
    fontFamily: "PJS",
    // Add other properties as needed
  );
  static const TextStyle kBlackAppBarHeader = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: KColors.textColor,
    fontFamily: "PJS",
    // Add other properties as needed
  );

  //for header
  static const TextStyle kHeader = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: KColors.textColor,
    fontFamily: "PJS",
    // Add other properties as needed
  );

  //for titles
  static const TextStyle kTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: KColors.textColor,
    fontFamily: "PJS",
    // Add other properties as needed
  );
  //for subtitles
  static const TextStyle kSubtitle = TextStyle(
    fontSize: 16.0,
    color: KColors.textColor,
    fontWeight: FontWeight.normal,
    fontFamily: "PJS",
    // Add other properties as needed
  );

  //for buttons
  static const TextStyle kButtonText = TextStyle(
    color: KColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    fontFamily: "PJS",
  );

  //for custom snackbar
  //sub title or in message
  static const TextStyle kSnackSubtitle = TextStyle(
    fontSize: 16.0,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontFamily: "PJS",
  );
  //for snackbar title
  static const TextStyle kSnackTitle = TextStyle(
    fontSize: 18.0,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: "PJS",
  );
  //for custom alert dialog box
  //title
  static const TextStyle kAlertTitle = TextStyle(
    fontSize: 18.0,
    color: Colors.black87,
    fontWeight: FontWeight.w700,
    fontFamily: "PJS",
  );
  //subtitle
  static const TextStyle kAlertSubtitle = TextStyle(
    fontSize: 16.0,
    color: Colors.black87,
    fontWeight: FontWeight.w500,
    fontFamily: "PJS",
  );
  //ok button in alert
  static const TextStyle kAlertOkButton = TextStyle(
    fontSize: 16.0,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: "PJS",
  );
  //cancel button in alert
  static const TextStyle kAlertCancelButton = TextStyle(
    fontSize: 16.0,
    color: KColors.textColor,
    fontWeight: FontWeight.w700,
    fontFamily: "PJS",
  );

  //for carousel slider
  //title
  static const TextStyle kCarrSubtitle = TextStyle(
    fontSize: 28.0,
    color: KColors.textColor,
    fontWeight: FontWeight.bold,
    fontFamily: "PJS",
  );
  //sub title
  static const TextStyle kCarrTitle = TextStyle(
    fontSize: 22.0,
    color: KColors.textColor,
    fontWeight: FontWeight.w600,
    fontFamily: "PJS",
  );

  //for Nav bar
  //active nav text
  static const TextStyle kactiveNav = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: KColors.white,
    fontFamily: "PJS",
    // Add other properties as needed
  );
  //In-active nav text
  static const TextStyle kinActiveNav = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    color: KColors.white,
    fontFamily: "PJS",
    // Add other properties as needed
  );
}
