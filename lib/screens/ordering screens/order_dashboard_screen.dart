import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/order_dashboard_cubits/order_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/order_dashboard_cubits/order_dashboard_state.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/containers/area_tabs.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';
import 'package:zimbapos/widgets/screens_widgets/table_widget.dart';

class OrderDashboardScreen extends StatefulWidget {
  const OrderDashboardScreen({super.key});

  @override
  State<OrderDashboardScreen> createState() => _OrderDashboardScreenState();
}

class _OrderDashboardScreenState extends State<OrderDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => OrderDashboardCubit(),
      child: BlocBuilder<OrderDashboardCubit, OrderDashboardState>(
        builder: (context, state) {
          if (state is OrderDashboardLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is OrderDashboardLoaded) {
            if (state.areas.isEmpty) {
              return Scaffold(
                appBar: AppBar(),
                body: const Center(
                  child: Text('No Data Found!'),
                ),
              );
            }
            return DefaultTabController(
              length: state.areas.length,
              child: Scaffold(
                appBar: appBar(theme),
                body: (state is TableLoading)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                                onPressed: () {
                                  context.pop();
                                },
                                icon: Image.asset(
                                  "assets/icons/back.png",
                                  height: 5.h,
                                )),
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.w, vertical: 2.5.h),
                                margin: EdgeInsets.only(left: 8.w),
                                decoration: BoxDecoration(
                                    color: KColors.greyContainer,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: Text("Dine In",
                                    style: theme.textTheme.displayMedium)),
                          ),
                          Container(
                            color: KColors.greyContainer,
                            width: 100.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.w, vertical: 2.5.h),
                            child: areaTabs(context, state.areas,
                                theme.textTheme, state.selectedTab),
                          ),
                          SizedBox(height: 2.5.h),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.w, vertical: 1.h),
                            child: Row(
                              children: [
                                tableDetails(theme, 'Running Table',
                                    KColors.billTabColor),
                                SizedBox(width: 2.w),
                                tableDetails(
                                    theme, 'Billed Table', KColors.runTabColor),
                                SizedBox(width: 2.w),
                                tableDetails(
                                    theme, 'Empty Table', KColors.whiteColor,
                                    empty: true)
                              ],
                            ),
                          ),
                          SizedBox(height: 2.5.h),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6.w),
                              child: TabBarView(children: [
                                SingleChildScrollView(
                                  child: Wrap(
                                    alignment: WrapAlignment.spaceBetween,
                                    spacing: .8.w,
                                    runSpacing: 2.h,
                                    children: List.generate(state.tables.length,
                                        (index) {
                                      final table = state.tables[index];
                                      return InkWell(
                                        onTap: () {
                                          context.push(
                                              AppScreen
                                                  .itemsSelectionScreen.path,
                                              extra: [
                                                table.tableId,
                                                table.tableName
                                              ]);
                                        },
                                        child: tableWidget(
                                            table, theme.textTheme, () {}),
                                      );
                                    }),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
              ),
            );
          } else if (state is OrderDashboardError) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget tableDetails(ThemeData theme, String text, Color color,
      {bool empty = false}) {
    return Row(
      children: [
        if (empty)
          DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(8),
              child: Container(
                width: 1.3.w,
                height: 2.5.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
              )),
        if (!empty)
          Container(
            width: 1.5.w,
            height: 2.7.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: color),
          ),
        SizedBox(width: 1.5.w),
        Text(
          text,
          style: theme.textTheme.headlineSmall,
        )
      ],
    );
  }
}
