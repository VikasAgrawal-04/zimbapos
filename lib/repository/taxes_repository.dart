import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';

class TaxesRepository {
  final Isar db;

  TaxesRepository(this.db);

  Stream<List<TaxModel>> streamTaxList() {
    return db.taxModels.where().watch(fireImmediately: true);
  }

  createTax({required TaxModel model}) {
    db.writeTxnSync(() => db.taxModels.putSync(model));
  }

  // editVendor({required int id, required VendorModel model}) async {
  //   VendorModel? dbItem = await db.vendorModels.get(id);
  //   log(dbItem!.id.toString());
  //   log(model!.id.toString());
  //   if (dbItem != null) {
  //     dbItem = model;
  //     log('in to fun');
  //     db.writeTxnSync(() => db.vendorModels.putSync(dbItem!));
  //   }
  // }
  editTax({required TaxModel model}) async {
    TaxModel? dbItem = await db.taxModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.taxModels.putSync(dbItem!));
    }
  }

  deleteTax(int id) async {
    db.writeTxnSync(() {
      db.taxModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    TaxModel? model = await db.taxModels.get(id);
    if (model != null) {
      log(isActive.toString());
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.taxModels.putSync(model);
      });
    }
  }
}
