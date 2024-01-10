import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Manage Worker'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => context.push(AppScreen.createWorkerScreen.path),
          label: const Text('Add Workers'),
          icon: const Icon(Icons.add),
        ),
        body: StreamBuilder<List<WorkersModel>>(
          stream: getWorkerList(),
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (data == null || data.isEmpty) {
              return const Center(
                child: Text('No Workers'),
              );
            }
            return DataTable(
              columns: const [
                DataColumn(
                  label: Text('Name'),
                ),
                DataColumn(
                  label: Text('Role'),
                ),
                DataColumn(
                  label: Text('Active'),
                ),
                DataColumn(
                  label: Text('Actions'),
                ),
              ],
              rows: data
                  .map(
                    (e) => DataRow(
                      cells: [
                        DataCell(Text(e.workerName)),
                      ],
                    ),
                  )
                  .toList(),
            );
          },
        ));
  }
}
