import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_state.dart';
import 'package:zimbapos/constants/ktextstyles.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/area_table_widget.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  //
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<AreasScreenCubit>().init();
  // }

  deleteTable(TableModel table) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${table.tableName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.tableRepository.deleteTable(table.id);
        EasyLoading.showToast('Table deleted');
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Table list',
          style: KTextStyles.kBlackAppBarHeader,
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              context.read<TableScreenCubit>().clearControllers();
              context.push(AppScreen.createTableScreen.path);
            },
            label: const Text('Add table'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
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
                          // deleteTable: deleteTable,
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
    );
  }
}
