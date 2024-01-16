import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../widgets/my_alert_widget.dart';

class RateSetOverviewScreen extends StatefulWidget {
  const RateSetOverviewScreen({super.key});

  @override
  State<RateSetOverviewScreen> createState() => _RateSetOverviewScreenState();
}

class _RateSetOverviewScreenState extends State<RateSetOverviewScreen> {
  Stream<List<RateSetsModel>> streamRateSet() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    return datatbaseCubit.rateSetsRepository.streamRateSets();
  }

  // toggleFn(int id, bool value) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.rateSetsRepository.changeActive(id, value);
  // }

  // deleteFn(int id) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.rateSetsRepository.deleteRateSetbyID(id);
  // }

  deleteWorker(RateSetsModel rateset) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${rateset.ratesetName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.rateSetsRepository.deleteRateSetbyID(rateset.id);
        EasyLoading.showToast('Rate set deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateWorkers(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.rateSetsRepository.changeActive(id, value);
  }

  editWorkerFn({required RateSetsModel model}) {
    context.push(
      AppScreen.editRateSetScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate Sets'),
        actions: [
          IconButton(
            onPressed: () => context.push(AppScreen.createRateSetsScreen.path),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: StreamBuilder<List<RateSetsModel>>(
        stream: streamRateSet(),
        builder: (context, snapshot) {
          final list = snapshot.data;
          if (list == null || list.isEmpty) {
            return const Center(
              child: Text('No Rate Set'),
            );
          }
          return SizedBox(
            width: 100.w,
            child: DataTable(
              columns: [
                const DataColumn(
                  label: Text('Name'),
                ),
                // const DataColumn(
                //   label: Text('Role'),
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
              rows: list
                  .map(
                    (e) => DataRow(
                      cells: [
                        DataCell(Text(e.ratesetName.toString())),
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
                                  onPressed: () => deleteWorker(e),
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
          //   itemCount: list.length,
          //   itemBuilder: (context, index) => ListTile(
          //     title: Text(list[index].ratesetName ?? 'Test'),
          //     subtitle:
          //         Text((list[index].isActive ?? false) ? 'Active' : "InActive"),
          //     trailing: Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         Switch.adaptive(
          //           value: list[index].isActive ?? false,
          //           onChanged: (value) => toggleFn(list[index].id, value),
          //         ),
          //         SizedBox(width: screenSize.width * 0.025),
          //         //edit
          //         IconButton(
          //           onPressed: () => context.push(
          //             AppScreen.editRateSetScreen.path,
          //             //passing data to edit screen
          //             extra: list[index],
          //           ),
          //           icon: const Icon(
          //             Icons.edit,
          //             size: 30,
          //           ),
          //         ),

          //         //delete
          //         IconButton(
          //           onPressed: () => UtilDialog.showMyDialog(
          //             context,
          //             "Alert",
          //             "Are you sure to delete '${list[index].ratesetName}'?",
          //             //this is for ok button
          //             () {
          //               deleteFn(list[index].id);
          //               context.pop();
          //             },
          //             // this is for cancel button sending null will perform default pop() action
          //             null,
          //           ),
          //           icon: const Icon(
          //             Icons.delete,
          //             size: 30,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
