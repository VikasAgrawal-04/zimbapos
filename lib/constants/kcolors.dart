import 'package:flutter/material.dart';

class KColors {
  static const Color appBarBG = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color buttonColor = Colors.deepPurple;
  static const Color greyButtonColor = Color(0xFFF5F5F5);
  static const Color buttonTextColor = Color(0xFF1d1d1d);
  static const Color textColor = Color(0xFF234F68);
  static const Color textColor2 = Color(0xFFa1a1a1);
  static const Color boderColor = Color(0xFFd1d1d1);
  static const Color chipBGColor = Color(0xFFd9f1f0);
  static const Color iconColor = Color(0xFF234F68);
  static Color greenBlinkColor = hexToColor('#6ba850');

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
