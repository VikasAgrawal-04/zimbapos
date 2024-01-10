import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

class CreateTableScreen extends StatefulWidget {
  const CreateTableScreen({super.key});

  @override
  State<CreateTableScreen> createState() => _CreateTableScreenState();
}

class _CreateTableScreenState extends State<CreateTableScreen> {
  final tableName = TextEditingController();

  @override
  void dispose() {
    tableName.dispose();
    super.dispose();
  }

  createTable(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.tableRepository.createTable(data: TableModel(tableName: tableName.text));
    EasyLoading.showToast('Table Created');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Table'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tableName,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 2.h),
            ElevatedButton(
              onPressed: () => createTable(context),
              child: const Text('Create Table'),
            )
          ],
        ),
      ),
    );
  }
}
