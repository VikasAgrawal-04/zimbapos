import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/expenses_model.dart';

class ExpensesRepository {
  final Isar db;

  ExpensesRepository(this.db);

  Stream<List<ExpenseModel>> streamExpensesList() {
    return db.expenseModels.where().watch(fireImmediately: true);
  }

  createExpense({required ExpenseModel model}) {
    log(model.amount.toString());
    db.writeTxnSync(() => db.expenseModels.putSync(model));
  }

  editExpense({required int id, required ExpenseModel model}) async {
    ExpenseModel? dbItem = await db.expenseModels.get(id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.expenseModels.putSync(dbItem!));
    }
  }

  deleteExpense(int id) async {
    db.writeTxnSync(() {
      db.expenseModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    ExpenseModel? model = await db.expenseModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.expenseModels.putSync(model);
      });
    }
  }
}
