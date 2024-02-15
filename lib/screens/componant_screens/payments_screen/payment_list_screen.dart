import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/pay_mod_master_cubits/pay_mod_master_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/pay_mod_master_cubits/pay_mod_master_state.dart';

import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/pay_mod_master_model.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class PaymentListScreen extends StatefulWidget {
  const PaymentListScreen({super.key});

  @override
  State<PaymentListScreen> createState() => _PaymentListScreenState();
}

class _PaymentListScreenState extends State<PaymentListScreen> {
  //
  // Stream<List<PayModMasterModel>> getPaymentList() {
  //   final dbCubit = DatabaseCubit.dbFrom(context);
  //   return dbCubit.payModeRepository.streamPayments();
  // }

  deletePayment(PayModMasterModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.payTypeName}' payment mode?",
      //this is for ok button
      () {
        context
            .read<PayModMasterScreenCubit>()
            .deletePayModMaster(e.payCode.toString());
        // final dbCubit = DatabaseCubit.dbFrom(context);
        // dbCubit.paymentsRepository.deletePayment(e.id);
        // EasyLoading.showToast('Payment deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  editPaymentFn({required PayModMasterModel model}) {
    context.push(
      AppScreen.editPaymentsScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/menu.png', height: 3.h),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/power_off.png', height: 3.h)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.h),
            child: Divider(
              color: KColors.blackColor,
              thickness: 1.0,
              endIndent: 1.w,
              indent: 1.w,
            ),
          ),
        ),
        body: Column(
          children: [
            //row for back button
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Image.asset(
                    "assets/icons/back.png",
                    height: 5.h,
                  ),
                ),
              ],
            ),

            //page title
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 24,
                right: 24,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Pay Mode List',
                    style: theme.textTheme.titleLarge,
                  ),

                  //add  button
                  CustomButtonNew(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    shadows: const [],
                    height: 8.h,
                    width: 18.w,
                    text: 'Add New Pay Mode',
                    style: theme.textTheme.titleMedium,
                    onTap: () {
                      context
                          .read<PayModMasterScreenCubit>()
                          .clearControllers();
                      context.push(AppScreen.createPaymentsScreen.path);
                    },
                  ),
                ],
              ),
            ),

            //divider
            PreferredSize(
              preferredSize: Size.fromHeight(1.h),
              child: Divider(
                color: KColors.greyFill,
                thickness: 1.0,
                endIndent: 1.w,
                indent: 1.w,
              ),
            ),

            //table
            BlocBuilder<PayModMasterScreenCubit, PayModMasterScreenState>(
              builder: (context, state) {
                final list = state.payModMasterList;
                if (state.status == Status.loading) {
                  return const MyLoadingIndicator();
                }
                if (list.isEmpty) {
                  return const Center(
                    child: Text('No Pay Modes Available'),
                  );
                } else {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 14,
                    ),
                    width: 100.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: DataTable(
                        border: TableBorder.all(
                          color: KColors.blackColor,
                          width: 1,
                        ),
                        headingRowColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                          return KColors.blackColor;
                        }),
                        headingTextStyle: KTextStyles.kTitle,
                        columns: [
                          DataColumn(
                            label: Text(
                              'Payment Name',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Active',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Padding(
                              padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                              child: Text(
                                'Actions',
                                style: theme.textTheme.headlineMedium,
                              ),
                            ),
                          ),
                        ],
                        rows: list
                            .map(
                              (e) => DataRow(
                                cells: [
                                  DataCell(Text(
                                    e.payTypeName.toString(),
                                    style: KTextStyles.kSubtitle,
                                  )),
                                  DataCell(
                                    Switch.adaptive(
                                        activeColor: theme.primaryColor,
                                        value: e.isActive as bool,
                                        onChanged: (va) {
                                          context
                                              .read<PayModMasterScreenCubit>()
                                              .updatePayModMaster(e, val: va);
                                        }),
                                  ),
                                  DataCell(
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            onPressed: () =>
                                                editPaymentFn(model: e),
                                            icon: Image.asset(
                                                'assets/icons/edit.png'),
                                          ),
                                          SizedBox(width: 2.w),
                                          IconButton(
                                            onPressed: () => deletePayment(e),
                                            icon: Image.asset(
                                                'assets/icons/delete.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
