import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/order_dashboard_cubits/order_cubit.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

Widget areaTabs(BuildContext context, List<AreasModel> areas, TextTheme theme,
    int selectedTab) {
  return TabBar(
      dividerHeight: 0,
      isScrollable: true,
      onTap: context.read<OrderDashboardCubit>().onTabChanged,
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: KColors.whiteColor),
      tabs: List.generate(areas.length, (index) {
        final area = areas[index];
        return Container(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          constraints: BoxConstraints(minWidth: 14.w),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, .25),
                    offset: Offset(0, 4),
                    blurRadius: 4.0)
              ],
              borderRadius: BorderRadius.circular(12),
              color: selectedTab == index
                  ? KColors.whiteColor
                  : KColors.greyContainer),
          child: Center(
            child: Text(
              area.areaName ?? "--",
              style: theme.displayMedium?.copyWith(
                  fontWeight: selectedTab != index ? FontWeight.w500 : null,
                  color: selectedTab != index ? const Color(0xff7B7B7B) : null),
            ),
          ),
        );
      }));
}
