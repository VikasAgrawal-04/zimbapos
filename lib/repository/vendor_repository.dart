import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/vendor_model.dart';

class VendorRepository {
  final Isar db;

  VendorRepository(this.db);

  Stream<List<VendorModel>> streamVendorsList() {
    return db.vendorModels.where().watch(fireImmediately: true);
  }

  createVendor({required VendorModel model}) {
    db.writeTxnSync(() => db.vendorModels.putSync(model));
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
  editVendor({required VendorModel model}) async {
    VendorModel? dbItem = await db.vendorModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.vendorModels.putSync(dbItem!));
    }
  }

  deleteVendor(int id) async {
    db.writeTxnSync(() {
      db.vendorModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    VendorModel? model = await db.vendorModels.get(id);
    if (model != null) {
      log(isActive.toString());
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.vendorModels.putSync(model);
      });
    }
  }
}
