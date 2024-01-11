import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/helpers/dialogs.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

class WorkerOverviewScreen extends StatefulWidget {
  const WorkerOverviewScreen({super.key});

  @override
  State<WorkerOverviewScreen> createState() => _WorkerOverviewScreenState();
}

class _WorkerOverviewScreenState extends State<WorkerOverviewScreen> {
  Stream<List<WorkersModel>> getWorkerList() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.workerRepository.streamWorkersList();
  }

  deleteWorker(int id) {
    showMyAlertDialog(
      context,
      title: 'Do you want to Delete The user?',
      content: '',
      onPress: () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.workerRepository.deleteWorker(id);
        context.pop();
      },
    );
  }

  activeDeactivateWorkers(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.workerRepository.changeActive(id, value);
  }

  editWorkerFn({required WorkersModel model}) {
    context.push(
      AppScreen.editWorkerScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Workers'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 8,
        enableFeedback: true,
        onPressed: () => context.push(AppScreen.createWorkerScreen.path),
        label: const Text('Add Workers'),
        icon: const Icon(Icons.add),
      ),
      body: StreamBuilder<List<WorkersModel>>(
        stream: getWorkerList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          final data = snapshot.data;
          if (data == null || data.isEmpty) {
            return const Center(
              child: Text('No Workers'),
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
                  label: Text('Role'),
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
              rows: data
                  .map(
                    (e) => DataRow(
                      cells: [
                        DataCell(Text(e.workerName)),
                        DataCell(Text(e.workerRoleDisplay(e.workerRole))),
                        DataCell(
                          Switch.adaptive(
                            value: e.isActive,
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
                                  onPressed: () => deleteWorker(e.id),
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
        },
      ),
    );
  }
}
