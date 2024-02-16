import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget backBtn(BuildContext context) {
  return IconButton(
    onPressed: () {
      context.pop();
    },
    icon: Image.asset(
      "assets/icons/back.png",
      height: 5.h,
    ),
  );
}
