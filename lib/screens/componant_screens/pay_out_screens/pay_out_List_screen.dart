import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../bloc/screen_cubits/payout_cubits/payout_screen_cubit.dart';
import '../../../bloc/screen_cubits/payout_cubits/payout_screen_state.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/pay_out_model.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';

class PayOutListScreen extends StatefulWidget {
  const PayOutListScreen({super.key});

  @override
  State<PayOutListScreen> createState() => _PayOutListScreenState();
}

class _PayOutListScreenState extends State<PayOutListScreen> {
  //
  viewDetailsFn(PayOutModel e) {
    //redirect to details screen
    context.push(
      AppScreen.viewPayOutScreen.path,
      extra: e,
    );
  }

  //date time format
  String formatDateTime(DateTime dateTime) {
    return DateFormat('dd MMM yyyy, hh:mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Pay Out List',
                      style: theme.textTheme.titleLarge,
                    ),

                    //add area button
                    CustomButtonNew(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      shadows: const [],
                      height: 8.h,
                      width: 18.w,
                      text: 'Add New Pay Out',
                      style: theme.textTheme.titleMedium,
                      onTap: () {
                        context.read<PayOutScreenCubit>().clearControllers();
                        context.push(AppScreen.createPayOutScreen.path);
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

              //title and filter
              // Padding(
              //   padding: const EdgeInsets.only(
              //     top: 18,
              //     left: 24,
              //     right: 24,
              //     bottom: 18,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Text(
              //         "Pay In List",
              //         style: theme.textTheme.titleMedium,
              //       ),

              //       //add  button
              //       CustomButtonNew(
              //         shadows: const [],
              //         height: 3.5.h,
              //         width: 6.w,
              //         text: 'Filter',
              //         color: Colors.grey.shade200,
              //         style: theme.textTheme.bodyMedium,
              //         onTap: () {
              //           //filter
              //         },
              //       ),
              //     ],
              //   ),
              // ),

              // displaying areas
              BlocBuilder<PayOutScreenCubit, PayOutScreenState>(
                builder: (context, state) {
                  final data = state.payOutList;
                  if (state.status == Status.loading) {
                    return const MyLoadingIndicator();
                  }
                  if (data.isEmpty) {
                    return const Center(
                      child: Text('No Pay Out Done'),
                    );
                  } else {
                    return Container(
                      width: 100.w,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 14,
                      ),
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
                                'Date',
                                style: theme.textTheme.headlineMedium,
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Amount',
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
                          rows: data
                              .map(
                                (e) => DataRow(
                                  cells: [
                                    DataCell(Text(
                                      formatDateTime(e.dateTime as DateTime),
                                      style: KTextStyles.kSubtitle,
                                    )),
                                    DataCell(Text(
                                      "${e.amount.toString()}/-",
                                      style: KTextStyles.kSubtitle,
                                    )),
                                    DataCell(
                                      IconButton(
                                        onPressed: () => viewDetailsFn(e),
                                        icon: Icon(
                                          Icons.remove_red_eye_rounded,
                                          color: theme.primaryColor,
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
      ),
    );
  }
}
