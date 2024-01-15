import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/my_alert_widget.dart';

import '../../../bloc/cubits/database/database_cubit.dart';

class AreasOverviewScreen extends StatefulWidget {
  const AreasOverviewScreen({super.key});

  @override
  State<AreasOverviewScreen> createState() => _AreasOverviewScreenState();
}

class _AreasOverviewScreenState extends State<AreasOverviewScreen> {
  //
  Stream<List<AreasModel>> streamForAreas() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    // log(datatbaseCubit.rateSetsRepository.getRateSets().toString());
    return datatbaseCubit.areasRepository.streamAreas();
  }

  //fetch ratesets and compare their ids and show ratesetname in area list
  Future<List<RateSetsModel?>> getAllRateSets() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final rateSets = await datatbaseCubit.rateSetsRepository.getRateSets();
    // log(rateSets.toString());
    for (var rateSet in rateSets) {
      log(rateSet!.ratesetName.toString());
    }
    return rateSets;
  }

  // toggleAreaFn(int id, bool value) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.areasRepository.changeActiveArea(id, value);
  // }

  // deleteAreaFn(int id) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.areasRepository.deleteAreabyID(id);
  // }

  deleteWorker(AreasModel worker) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${worker.areaName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.areasRepository.deleteAreabyID(worker.id);
        EasyLoading.showToast('Area deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateWorkers(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.areasRepository.changeActiveArea(id, value);
  }

  editWorkerFn({required AreasModel model}) {
    context.push(
      AppScreen.editAreaScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Areas'),
        actions: [
          IconButton(
            onPressed: () => context.push(AppScreen.createAreasScreen.path),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: StreamBuilder<List<AreasModel>>(
        stream: streamForAreas(),
        builder: (context, snapshot) {
          final list = snapshot.data;
          if (list == null || list.isEmpty) {
            return const Center(
              child: Text('No areas available,create one.'),
            );
          }
          return SizedBox(
            width: 100.w,
            child: DataTable(
              columns: [
                const DataColumn(
                  label: Text('Name'),
                ),
                const DataColumn(
                  label: Text('Charges'),
                ),
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
                        DataCell(Text(e.areaName.toString())),
                        DataCell(Text("${e.exchangePercent.toString()}%")),
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
          //   shrinkWrap: true,
          //   itemBuilder: (context, index) => ListTile(
          //     title: Text(list[index].areaName ?? 'Test'),
          //     subtitle: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         //exchange percent
          //         Text(
          //           "Extra charge:  ${list[index].exchangePercent.toString()}%",
          //           style: const TextStyle(
          //             color: Colors.black54,
          //           ),
          //         ),
          //         Text(
          //             (list[index].isActive ?? false) ? 'Active' : "In-Active"),
          //       ],
          //     ),
          //     trailing: Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         SizedBox(width: screenSize.width * 0.025),
          //         Switch.adaptive(
          //           value: list[index].isActive ?? false,
          //           onChanged: (value) => toggleAreaFn(list[index].id, value),
          //         ),
          //         SizedBox(width: screenSize.width * 0.025),
          //         //edit
          //         IconButton(
          //           onPressed: () => context.push(
          //             AppScreen.editAreaScreen.path,
          //             //passing data to edit screen
          //             extra: list[index],
          //           ),
          //           icon: const Icon(
          //             Icons.edit,
          //             size: 30,
          //           ),
          //         ),
          //         SizedBox(width: screenSize.width * 0.025),
          //         //delete
          //         IconButton(
          //           onPressed: () => UtilDialog.showMyDialog(
          //             context,
          //             "Alert",
          //             "Are you sure to delete '${list[index].areaName}'?",
          //             //this is for ok button
          //             () {
          //               deleteAreaFn(list[index].id);
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
