import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

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

  deleteFn(int id) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.tableRepository.deleteTable(id);
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
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final rawData = data[index];
                  return ListTile(
                    title: Text(rawData.tableName ?? "Table Name"),
                    subtitle: Text((data[index].isActive ?? false)
                        ? 'Active'
                        : "InActive"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => deleteFn(data[index].id),
                          icon: const Icon(
                            Icons.delete,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Switch.adaptive(
                          value: data[index].isActive ?? false,
                          onChanged: (value) => toggleFn(data[index].id, value),
                        ),
                      ],
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
