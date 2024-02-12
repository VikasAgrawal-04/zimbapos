import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/widgets/containers/dotter_line.dart';

Widget tableWidget(TableModel data, TextTheme theme, Function() onTap) {
  switch (data.tableStatus) {
    case "R":
      return Stack(
        children: [
          Container(
            width: 12.w,
            height: 11.h,
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: .7.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: KColors.runTabColor),
            child: Column(
              children: [
                Text(
                  data.tableName ?? "",
                  style: theme.displayLarge?.copyWith(fontSize: 14.sp),
                ),
                SizedBox(height: .5.h),
                Text(data.tableAmount?.toString() ?? "0.0",
                    style: theme.displaySmall),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: .8.w),
                    child: const DottedLine(moreWidth: true)),
                Text(data.customerName?.toString() ?? "Name Of The Customer",
                    style: theme.headlineSmall),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
                onPressed: onTap, icon: const Icon(Icons.keyboard_arrow_down)),
          )
        ],
      );
    case "B":
      return Stack(
        children: [
          Container(
            width: 12.w,
            height: 11.h,
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: .7.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: KColors.billTabColor),
            child: Column(
              children: [
                Text(
                  data.tableName ?? "",
                  style: theme.displayLarge?.copyWith(fontSize: 14.sp),
                ),
                SizedBox(height: .5.h),
                Text(data.tableAmount?.toString() ?? "0.0",
                    style: theme.displaySmall),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: .8.w),
                    child: const DottedLine(moreWidth: true)),
                Text(data.customerName?.toString() ?? "Name Of The Customer",
                    style: theme.headlineSmall),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
                onPressed: onTap, icon: const Icon(Icons.keyboard_arrow_down)),
          )
        ],
      );
    default:
      return DottedBorder(
        borderType: BorderType.RRect,
        dashPattern: const [2, 2],
        radius: const Radius.circular(12),
        child: Stack(
          children: [
            Container(
              width: 12.w,
              height: 11.h,
              padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: .7.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  data.tableName ?? "",
                  style: theme.displayLarge,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: IconButton(
                  onPressed: onTap,
                  icon: const Icon(Icons.keyboard_arrow_down)),
            )
          ],
        ),
      );
  }
}
