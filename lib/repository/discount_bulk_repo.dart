import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/discount_bulk_model.dart';

class DiscBulkRepository {
  final Isar db;

  DiscBulkRepository(this.db);

  Stream<List<BulkDisc>> streamBulkDiscList() {
    return db.bulkDiscs.where().watch(fireImmediately: true);
  }

  createBulkDisc({required BulkDisc model}) {
    db.writeTxnSync(() => db.bulkDiscs.putSync(model));
  }

  Future<List<BulkDisc?>> getAllBulkDiscs() async {
    return await db.bulkDiscs.filter().isDeletedEqualTo(false).findAll();
  }

  editBulkDisc({required BulkDisc model}) async {
    BulkDisc? dbItem = await db.bulkDiscs.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.bulkDiscs.putSync(dbItem!));
    }
  }

  deleteBulkDisc(int id) async {
    db.writeTxnSync(() {
      db.bulkDiscs.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    BulkDisc? model = await db.bulkDiscs.get(id);
    if (model != null) {
      log(isActive.toString());
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.bulkDiscs.putSync(model);
      });
    }
  }
}
