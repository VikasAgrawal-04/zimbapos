import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/constants/kcolors.dart';

Widget titleContainer(
    {required String title, required TextTheme theme, bool currentKot = true}) {
  return Container(
    width: 100.w,
    decoration: BoxDecoration(
        color: KColors.greyHeadline,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12))),
    padding: EdgeInsets.symmetric(horizontal: 1.5.w, vertical: .8.h),
    child: Row(children: [
      Text(
        title,
        style: theme.displaySmall?.copyWith(fontWeight: FontWeight.w800),
      ),
      if (!currentKot) ...{
        IconButton(
            onPressed: () {}, icon: Image.asset('assets/icons/print.png'))
      }
    ]),
  );
}
