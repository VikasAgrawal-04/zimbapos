import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/expense_category_model.dart';

class ExpenseCategoryRepository {
  final Isar db;

  ExpenseCategoryRepository(this.db);

  Stream<List<ExpenseCategoryModel>> streamExpenseCategoryList() {
    return db.expenseCategoryModels.where().watch(fireImmediately: true);
  }

  createExpenseCategory({required ExpenseCategoryModel model}) {
    db.writeTxnSync(() => db.expenseCategoryModels.putSync(model));
  }

  editExpensecategory({required ExpenseCategoryModel model}) async {
    ExpenseCategoryModel? dbItem = await db.expenseCategoryModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.expenseCategoryModels.putSync(dbItem!));
    }
  }

  deleteExpensecategory(int id) async {
    db.writeTxnSync(() {
      db.expenseCategoryModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    ExpenseCategoryModel? model = await db.expenseCategoryModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.expenseCategoryModels.putSync(model);
      });
    }
  }
}
