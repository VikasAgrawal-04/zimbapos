import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/expense_category_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/my_alert_widget.dart';

class ExpenseCategoryListScreen extends StatefulWidget {
  const ExpenseCategoryListScreen({super.key});

  @override
  State<ExpenseCategoryListScreen> createState() =>
      _ExpenseCategoryListScreenState();
}

class _ExpenseCategoryListScreenState extends State<ExpenseCategoryListScreen> {
  //
  Stream<List<ExpenseCategoryModel>> getExpenseCatList() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.expenseCategoryRepository.streamExpenseCategoryList();
  }

  deleteExpenseCat(ExpenseCategoryModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.expenseCategoryName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.vendorRepository.deleteVendor(e.id);
        EasyLoading.showToast('Expense category deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateExpenseCat(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.expenseCategoryRepository.changeActive(id, value);
  }

  editExpenseCatFn({required ExpenseCategoryModel model}) {
    context.push(
      AppScreen.editExpenseCategoryScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Expense categories'),
        actions: [
          TextButton.icon(
            onPressed: () => context.push(AppScreen.createExpenseScreen.path),
            label: const Text('Add category'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder<List<ExpenseCategoryModel>>(
        stream: getExpenseCatList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          final data = snapshot.data;
          if (data == null || data.isEmpty) {
            return const Center(
              child: Text('No Vendors'),
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
                        DataCell(Text(e.expenseCategoryName.toString())),
                        DataCell(
                          Switch.adaptive(
                            value: e.isActive as bool,
                            onChanged: (va) =>
                                activeDeactivateExpenseCat(e.id, va),
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
                                  onPressed: () => editExpenseCatFn(model: e),
                                  icon: const Icon(Icons.edit),
                                ),
                                SizedBox(width: 2.w),
                                IconButton(
                                  onPressed: () => deleteExpenseCat(e),
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
