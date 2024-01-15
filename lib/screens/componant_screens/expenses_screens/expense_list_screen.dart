import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/expenses_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/my_alert_widget.dart';

class ExpensesListScreen extends StatefulWidget {
  const ExpensesListScreen({super.key});

  @override
  State<ExpensesListScreen> createState() => _ExpensesListScreenState();
}

class _ExpensesListScreenState extends State<ExpensesListScreen> {
  //
  Stream<List<ExpenseModel>> getExpenseList() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.expensesRepository.streamExpensesList();
  }

  deleteExpense(ExpenseModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete expense?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.expensesRepository.deleteExpense(e.id);
        EasyLoading.showToast('Expense deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  editExpenseFn({required ExpenseModel model}) {
    context.push(
      AppScreen.editExpenseScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Expense'),
        actions: [
          TextButton.icon(
            onPressed: () => context.push(AppScreen.createExpenseScreen.path),
            label: const Text('Add Expense'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder<List<ExpenseModel>>(
        stream: getExpenseList(),
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
                  label: Text('Bill date'),
                ),
                const DataColumn(
                  label: Text('Bill number'),
                ),
                const DataColumn(
                  label: Text('Amount'),
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
                        DataCell(Text(e.billDate.toString())),
                        DataCell(Text(e.billNumber.toString())),
                        DataCell(Text(e.amount.toString())),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () => editExpenseFn(model: e),
                                  icon: const Icon(Icons.edit),
                                ),
                                SizedBox(width: 2.w),
                                IconButton(
                                  onPressed: () => deleteExpense(e),
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
