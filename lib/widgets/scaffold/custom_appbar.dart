import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/constants/kcolors.dart';

AppBar appBar(ThemeData theme, {String? title}) {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/menu.png', height: 3.h),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/power_off.png', height: 3.h)),
    ],
    title: title == null
        ? RichText(
            text: TextSpan(
                text: "Zimba",
                style: theme.appBarTheme.titleTextStyle?.copyWith(shadows: [
                  const Shadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4.0)
                ]),
                children: [
                TextSpan(
                    text: " POS",
                    style: theme.appBarTheme.titleTextStyle
                        ?.copyWith(color: KColors.yellowColor, shadows: [
                      const Shadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4.0)
                    ])),
              ]))
        : RichText(
            text: TextSpan(
            text: title,
            style: theme.appBarTheme.titleTextStyle?.copyWith(shadows: [
              const Shadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 4),
                  blurRadius: 4.0)
            ]),
          )),
    bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.h),
        child: Divider(
          color: KColors.blackColor,
          thickness: 1.0,
          endIndent: 1.w,
          indent: 1.w,
        )),
  );
}
