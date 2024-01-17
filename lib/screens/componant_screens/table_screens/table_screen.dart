import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../widgets/my_alert_widget.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  Stream<List<TableModel>> tableStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.tableRepository.streamTables();
  }

  toggleFn(int id, bool value) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.tableRepository.changeActive(id, value);
  }

  // deleteFn(String? id) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.tableRepository.deleteTable(id);
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

  activeDeactivateWorkers(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.tableRepository.changeActive(id, value);
  }

  editWorkerFn({required TableModel model}) {
    context.push(
      AppScreen.editTableScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tables'),
        actions: [
          IconButton(
            onPressed: () => context.push(AppScreen.createTableScreen.path),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: StreamBuilder<List<TableModel>>(
        stream: tableStream(),
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data == null || data.isEmpty) {
            return const Center(
              child: Text('No Tables'),
            );
          } else {
            return SizedBox(
              width: 100.w,
              child: DataTable(
                columns: [
                  const DataColumn(
                    label: Text('Name'),
                  ),
                  // const DataColumn(
                  //   label: Text('Area'),
                  // ),
                  const DataColumn(
                    label: Text('Active'),
                  ),
                  DataColumn(
                    label: Padding(
                      padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                      child: const Text('Actions'),
                    ),
                  ),
                ],
                rows: data
                    .map(
                      (e) => DataRow(
                        cells: [
                          DataCell(Text(e.tableName.toString())),
                          // DataCell(Text(e.areaId.toString())),
                          DataCell(
                            Switch.adaptive(
                              value: e.isActive as bool,
                              onChanged: (va) =>
                                  activeDeactivateWorkers(e.id, va),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () => editWorkerFn(model: e),
                                    icon: const Icon(Icons.edit),
                                  ),
                                  SizedBox(width: 2.w),
                                  IconButton(
                                    onPressed: () => deleteTable(e),
                                    icon: const Icon(CupertinoIcons.delete),
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
            );
            // ListView.builder(
            //     itemCount: data.length,
            //     itemBuilder: (context, index) {
            //       final rawData = data[index];
            //       return ListTile(
            //         title: Text(rawData.tableName ?? "Table Name"),
            //         subtitle: Text((data[index].isActive ?? false)
            //             ? 'Active'
            //             : "InActive"),
            //         trailing: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //             Switch.adaptive(
            //               value: data[index].isActive ?? false,
            //               onChanged: (value) => toggleFn(data[index].id, value),
            //             ),
            //             SizedBox(width: 2.w),
            //             //edit
            //             IconButton(
            //               onPressed: () => context.push(
            //                 AppScreen.editTableScreen.path,
            //                 //passing data to edit screen
            //                 extra: data[index],
            //               ),
            //               icon: const Icon(
            //                 Icons.edit,
            //                 size: 30,
            //               ),
            //             ),

            //             //delete
            //             IconButton(
            //               onPressed: () => UtilDialog.showMyDialog(
            //                 context,
            //                 "Alert",
            //                 "Are you sure to delete '${rawData.tableName}'?",
            //                 //this is for ok button
            //                 () {
            //                   deleteFn(data[index].id);
            //                   context.pop();
            //                 },
            //                 // this is for cancel button sending null will perform default pop() action
            //                 null,
            //               ),
            //               icon: const Icon(
            //                 Icons.delete,
            //                 size: 30,
            //               ),
            //             ),
            //           ],
            //         ),
            //       );
            //     });
          }
        },
      ),
    );
  }
}
