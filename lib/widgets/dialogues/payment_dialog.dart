import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/pay_mod_master_cubits/pay_mod_master_cubit.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/widgets/containers/dotter_line.dart';
import 'package:zimbapos/widgets/textfield/custom_textfield.dart';

Future paymentDialog(BuildContext context) {
  final theme = Theme.of(context).textTheme;
  final payMode =
      context.read<PayModMasterScreenCubit>().state.payModMasterList;
  return showDialog(
      context: context,
      builder: (BuildContext secContext) {
        final controller = TextEditingController();
        return AlertDialog.adaptive(
          backgroundColor: KColors.greyContainer,
          surfaceTintColor: KColors.greyContainer,
          shape: const RoundedRectangleBorder(),
          titlePadding: EdgeInsets.zero,
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            decoration: BoxDecoration(
                color: KColors.blackColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Text(
              "Balance : 800",
              style: theme.displayLarge?.copyWith(color: KColors.whiteColor),
              textAlign: TextAlign.center,
            ),
          ),
          content: SizedBox(
            width: 35.w,
            height: 70.h,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.5.w, vertical: 2.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Pay Now",
                            style: theme.titleLarge,
                          ),
                          SizedBox(width: 2.w),
                          Expanded(
                            child: CustomTextFieldNew(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 1.w),
                                hint: 'Enter Price',
                                fillColor: KColors.whiteColor,
                                control: controller,
                                isRequired: true,
                                keyboardType: TextInputType.number,
                                isNumber: true,
                                textInputAction: TextInputAction.done),
                          )
                        ],
                      ),
                      SizedBox(height: 1.5.h),
                      SizedBox(
                        width: 100.w,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          children: List.generate(payMode.length, (index) {
                            final mode = payMode[index];
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                width: 7.w,
                                height: 6.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 1.5.w, vertical: 1.h),
                                decoration: BoxDecoration(
                                    color: KColors.yellowColor,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    mode.payTypeName ?? "",
                                    style: theme.titleMedium,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
                const DottedLine(),
                Container(
                  width: 100.w,
                  margin:
                      EdgeInsets.symmetric(horizontal: 3.5.w, vertical: 2.h),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(0, 0, 0, .5)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.5.h),
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: KColors.whiteColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        child: Text(
                          'Part Payment Added',
                          style: theme.displayMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.5.w, vertical: 1.h),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text("Mode", style: theme.titleLarge)),
                            Expanded(
                                child:
                                    Text("Amount", style: theme.titleLarge)),
                            const Expanded(
                                child: Text(
                              "",
                            )),
                          ],
                        ),
                      ),
                      const Divider(color: Color.fromRGBO(0, 0, 0, .5),thickness: 1,),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
}
