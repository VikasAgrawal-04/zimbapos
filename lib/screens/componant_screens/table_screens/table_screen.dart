import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_state.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/area_table_widget.dart';

import '../../../constants/kcolors.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  //
  @override
  void initState() {
    super.initState();
    log("init executed");
    context.read<AreasScreenCubit>().init();
    context.read<TableScreenCubit>().init();
  }

  deleteTable(TableModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.tableName}'?",
      //this is for ok button
      () {
        context.read<TableScreenCubit>().deleteTable(e.tableId.toString());
        // final dbCubit = DatabaseCubit.dbFrom(context);
        // dbCubit.tableRepository.deleteTable(table.id);
        // EasyLoading.showToast('Table deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  editTableFn({required TableModel model}) {
    context.push(
      AppScreen.editTableScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
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
                    'Tables',
                    style: theme.textTheme.titleLarge,
                  ),

                  //add button
                  CustomButtonNew(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    shadows: const [],
                    height: 8.h,
                    width: 18.w,
                    text: 'Add New Table',
                    style: theme.textTheme.titleMedium,
                    onTap: () {
                      context.read<TableScreenCubit>().clearControllers();
                      context.push(AppScreen.createTableScreen.path);
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
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 14,
              ),
              width: 100.w,
              child: BlocBuilder<TableScreenCubit, TableScreenState>(
                builder: (context, state) {
                  final tablesData = state.tableList;
                  if (state.status == Status.loading) {
                    return const MyLoadingIndicator();
                  }
                  if (tablesData.isEmpty) {
                    return const Center(
                      child: Text('No Tables'),
                    );
                  } else {
                    return BlocBuilder<AreasScreenCubit, AreasScreenState>(
                      builder: (context, state) {
                        final areasData = state.areaList;
                        if (state.status == Status.loading) {
                          return const MyLoadingIndicator();
                        }
                        if (areasData.isEmpty) {
                          return const Center(
                            child: Text('No Areas'),
                          );
                        } else {
                          return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: areasData.length,
                            itemBuilder: (context, index) {
                              final area = areasData[index];
                              final areaTables = tablesData
                                  .where((table) => table.areaId == area.areaId)
                                  .toList();

                              return AreaTablesWidget(
                                areaName: area.areaName ?? '',
                                tables: areaTables,
                                editTableFn: (TableModel model) =>
                                    editTableFn(model: model),
                                deleteTable: deleteTable,
                                // activeDeactivateTable: activeDeactivateTable,
                              );
                            },
                          );
                        }
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
