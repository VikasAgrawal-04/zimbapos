import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_cubit.dart';
import 'package:zimbapos/constants/ktextstyles.dart';

class SettingsOverviewScreen extends StatefulWidget {
  const SettingsOverviewScreen({super.key});

  @override
  State<SettingsOverviewScreen> createState() => _SettingsOverviewScreenState();
}

class _SettingsOverviewScreenState extends State<SettingsOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    final settingsCubit = BlocProvider.of<DeviceControlCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Padding(
            padding: (orientation == Orientation.landscape)
                ? EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h)
                : EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    children: [
                      Text(
                        'Enter rates including tax',
                        style: KTextStyles.kTitle,
                      ),
                      SizedBox(width: 2.w),
                      Tooltip(
                        triggerMode: TooltipTriggerMode.tap,
                        message:
                            'The Rate will the contain the Amount including Tax',
                        child: const Icon(CupertinoIcons.info_circle),
                        onTriggered: () {},
                      ),
                      const Expanded(child: SizedBox()),
                      Switch.adaptive(
                          value: settingsCubit.rateIncludeTax,
                          onChanged: (value) =>
                              settingsCubit.changeRateTaxFn(value))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    children: [
                      Text(
                        'Reset KOT numbers daily',
                        style: KTextStyles.kTitle,
                      ),
                      SizedBox(width: 2.w),
                      Tooltip(
                        triggerMode: TooltipTriggerMode.tap,
                        message: 'Every Day KOT Number will start from 1',
                        child: const Icon(CupertinoIcons.info_circle),
                        onTriggered: () {},
                      ),
                      const Expanded(child: SizedBox()),
                      Switch.adaptive(
                        value: settingsCubit.resetKOT,
                        onChanged: (value) => settingsCubit.changeKOT(value),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    children: [
                      Text(
                        'Extra Bank Charges',
                        style: KTextStyles.kTitle,
                      ),
                      SizedBox(width: 2.w),
                      Tooltip(
                        triggerMode: TooltipTriggerMode.tap,
                        message:
                            'The Rate will the contain the Amount including Tax',
                        child: const Icon(CupertinoIcons.info_circle),
                        onTriggered: () {},
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    children: [
                      Text(
                        'Extra Bank Round Off type',
                        style: KTextStyles.kTitle,
                      ),
                      SizedBox(width: 2.w),
                      Tooltip(
                        triggerMode: TooltipTriggerMode.tap,
                        message:
                            'The Total will be Rouned off based on Selected Value',
                        child: const Icon(CupertinoIcons.info_circle),
                        onTriggered: () {},
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
