import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/order_dashboard_cubits.dart/order_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/order_dashboard_cubits.dart/order_dashboard_state.dart';

class OrderDashboardScreen extends StatefulWidget {
  const OrderDashboardScreen({super.key});

  @override
  State<OrderDashboardScreen> createState() => _OrderDashboardScreenState();
}

class _OrderDashboardScreenState extends State<OrderDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderDashboardCubit(),
      child: BlocBuilder<OrderDashboardCubit, OrderDashboardState>(
        builder: (context, state) {
          if (state is OrderDashboardLoading || state is TableLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is OrderDashboardLoaded) {
            return DefaultTabController(
              length: state.areas.length,
              child: Scaffold(
                appBar: AppBar(
                  title: TabBar(
                      onTap: context.read<OrderDashboardCubit>().onTabChanged,
                      enableFeedback: true,
                      tabs: List.generate(state.areas.length, (index) {
                        final area = state.areas[index];
                        return Tab(child: Text(area.areaName ?? "--"));
                      })),
                ),
                body: (state is TableLoading)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : TabBarView(children: [
                        SingleChildScrollView(
                          child: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            runSpacing: 2.h,
                            children:
                                List.generate(state.tables.length, (index) {
                              final table = state.tables[index];
                              return SizedBox(
                                width: 14.9.w,
                                height: 20.h,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Card(
                                    elevation: 5,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(
                                            Icons.table_bar,
                                            size: 40,
                                          ),
                                          Text(table.tableName ?? ""),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ]),
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
}
