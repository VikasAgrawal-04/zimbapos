import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';

Widget billDetailRow(
    {required String title,
    String? value,
    required TextTheme theme,
    bool serviceCharge = false,
    bool grandTotal = false,
    bool totalQuantity = false}) {
  return Container(
    margin: EdgeInsets.only(bottom: .5.h),
    child: Row(
      children: [
        Text(title,
            style: grandTotal
                ? theme.displayMedium
                : totalQuantity
                    ? theme.bodyLarge?.copyWith(fontWeight: FontWeight.w600)
                    : theme.bodyLarge),
        if (serviceCharge) ...{
          CustomButtonNew(
            margin: EdgeInsets.only(left: 1.w),
            width: 1.9.w,
            height: 1.5.h,
            color: KColors.greyFill,
            child: Icon(
              Icons.close,
              size: 10.sp,
            ),
          )
        },
        const Spacer(),
        Text(value ?? "",
            style: grandTotal
                ? theme.displayMedium
                : totalQuantity
                    ? theme.bodyLarge?.copyWith(fontWeight: FontWeight.w600)
                    : theme.bodyLarge)
      ],
    ),
  );
}
