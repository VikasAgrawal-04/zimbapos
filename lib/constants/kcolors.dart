import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KColors {
  static const Color appBarBG = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color buttonColor = Color(0xFFF16721);
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


//color used in bg and appbar #2c7973

//color used in login button and edit profile icon bg  #f8b34c
//color used for button text #1d1d1d

//on textfield active #fdd9a5
//textfield bg #f2f2f2
//textcolor in textfield data #555555
//icon color in textfiled #468884

//border (outline) color for containers #d1d1d1

//active nav tab color #2c7873
//inactive nav tab color #aeaeae

//for in stock chip bg color #d9f1f0
//for text on payment summary #292929
//for pending balance #a1a1a1
//for total amount #2c7773




