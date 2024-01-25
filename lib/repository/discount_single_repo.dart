import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/discount_single_model.dart';

class DiscountRepository {
  final Isar db;

  DiscountRepository(this.db);

  Stream<List<DiscountModel>> streamDiscountList() {
    return db.discountModels.where().watch(fireImmediately: true);
  }

  createDiscount({required DiscountModel model}) {
    db.writeTxnSync(() => db.discountModels.putSync(model));
  }

  Future<List<DiscountModel?>> getDiscountList() async {
    return await db.discountModels.filter().isDeletedEqualTo(false).findAll();
  }

  editDiscount({required DiscountModel model}) async {
    DiscountModel? dbItem = await db.discountModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.discountModels.putSync(dbItem!));
    }
  }

  deleteDiscount(int id) async {
    db.writeTxnSync(() {
      db.discountModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    DiscountModel? model = await db.discountModels.get(id);
    if (model != null) {
      log(isActive.toString());
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.discountModels.putSync(model);
      });
    }
  }
}
