import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/constants/ktextstyles.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/area_table_widget.dart';

import '../../../widgets/my_alert_widget.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  //for tables
  Stream<List<TableModel>> tableStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.tableRepository.streamTables();
  }

  //for areas
  Stream<List<AreasModel>> areasStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.areasRepository.streamAreas();
  }

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

  activeDeactivateTable(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.tableRepository.changeActive(id, value);
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
            onPressed: () => context.push(AppScreen.createTableScreen.path),
            label: const Text('Add table'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder<List<TableModel>>(
        stream: tableStream(),
        builder: (context, snapshot) {
          final tablesData = snapshot.data;
          if (tablesData == null || tablesData.isEmpty) {
            return const Center(
              child: Text('No Tables'),
            );
          } else {
            return StreamBuilder<List<AreasModel>>(
              stream: areasStream(),
              builder: (context, areasSnapshot) {
                final areasData = areasSnapshot.data;
                if (areasData == null || areasData.isEmpty) {
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
                        deleteTable: deleteTable,
                        activeDeactivateTable: activeDeactivateTable,
                      );
                    },
                  );
                }
              },
            );
          }
        },
      ),

      // body: StreamBuilder<List<TableModel>>(
      //   stream: tableStream(),
      //   builder: (context, snapshot) {
      //     final data = snapshot.data;
      //     if (data == null || data.isEmpty) {
      //       return const Center(
      //         child: Text('No Tables'),
      //       );
      //     } else {
      //       return SingleChildScrollView(
      //         child: DataTable(
      //           columns: [
      //             const DataColumn(
      //               label: Text('Name'),
      //             ),
      //             // const DataColumn(
      //             //   label: Text('Area'),
      //             // ),
      //             const DataColumn(
      //               label: Text('Active'),
      //             ),
      //             DataColumn(
      //               label: Padding(
      //                 padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
      //                 child: const Text('Actions'),
      //               ),
      //             ),
      //           ],
      //           rows: data
      //               .map(
      //                 (e) => DataRow(
      //                   cells: [
      //                     DataCell(Text(e.tableName.toString())),
      //                     // DataCell(Text(e.areaId.toString())),
      //                     DataCell(
      //                       Switch.adaptive(
      //                         value: e.isActive as bool,
      //                         onChanged: (va) =>
      //                             activeDeactivateTable(e.id, va),
      //                       ),
      //                     ),
      //                     DataCell(
      //                       Container(
      //                         alignment: Alignment.center,
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           crossAxisAlignment: CrossAxisAlignment.center,
      //                           mainAxisSize: MainAxisSize.min,
      //                           children: [
      //                             IconButton(
      //                               onPressed: () => editTableFn(model: e),
      //                               icon: const Icon(Icons.edit),
      //                             ),
      //                             SizedBox(width: 2.w),
      //                             IconButton(
      //                               onPressed: () => deleteTable(e),
      //                               icon: const Icon(CupertinoIcons.delete),
      //                             )
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               )
      //               .toList(),
      //         ),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
