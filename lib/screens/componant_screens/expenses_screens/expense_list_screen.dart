import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/expenses_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Manage Expense',
            style: KTextStyles.kBlackAppBarHeader,
          ),
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
                headingTextStyle: KTextStyles.kTitle,
                columns: [
                  const DataColumn(
                    label: Text('Bill Name'),
                  ),
                  const DataColumn(
                    label: Text('Paid by'),
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
                          DataCell(Text(
                            e.description.toString(),
                            style: KTextStyles.kSubtitle,
                          )),
                          // DataCell(
                          //   Text(
                          //       "${e.entryDatetime!.day}/${e.entryDatetime!.month}/${e.entryDatetime!.year}"),
                          // ),
                          DataCell(Text(
                            e.payMode.toString(),
                            style: KTextStyles.kSubtitle,
                          )),
                          DataCell(Text(
                            e.amount.toString(),
                            style: KTextStyles.kSubtitle,
                          )),
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
      ),
    );
  }
}
