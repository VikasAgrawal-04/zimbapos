import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/discount_single_model.dart';

class DiscSingleRepository {
  final Isar db;

  DiscSingleRepository(this.db);

  Stream<List<SingleDisc>> streamSingleDiscList() {
    return db.singleDiscs.where().watch(fireImmediately: true);
  }

  createSingleDisc({required SingleDisc model}) {
    db.writeTxnSync(() => db.singleDiscs.putSync(model));
  }

  Future<List<SingleDisc?>> getAllSingleDiscs() async {
    return await db.singleDiscs.filter().isDeletedEqualTo(false).findAll();
  }

  editSingleDisc({required SingleDisc model}) async {
    SingleDisc? dbItem = await db.singleDiscs.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.singleDiscs.putSync(dbItem!));
    }
  }

  deleteSingleDisc(int id) async {
    db.writeTxnSync(() {
      db.singleDiscs.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    SingleDisc? model = await db.singleDiscs.get(id);
    if (model != null) {
      log(isActive.toString());
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.singleDiscs.putSync(model);
      });
    }
  }
}
