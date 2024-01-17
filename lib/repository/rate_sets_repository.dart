import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';

class RateSetsRepository {
  Isar db;
  RateSetsRepository(this.db);

  Stream<List<RateSetsModel>> streamRateSets() {
    return db.rateSetsModels
        .filter()
        .isDeletedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Future<List<RateSetsModel>> getAllRateSets() async {
    return await db.rateSetsModels
        .where()
        .filter()
        .isDeletedEqualTo(false)
        .findAll();
  }

  void createRateSet({required RateSetsModel model}) {
    db.writeTxnSync(() {
      db.rateSetsModels.putSync(model);
    });
  }

  Future<void> updateRateSet({required RateSetsModel model}) async {
    // final item = await db.rateSetsModels
    //     .filter()
    //     .ratesetIdEqualTo(model.ratesetId)
    //     .and()
    //     .isDeletedEqualTo(false)
    //     .findFirst();
    // if (item != null) {
    //   item.ratesetName = model.ratesetName;
    //   item.isActive = model.isActive;
    //   db.writeTxnSync(() => db.rateSetsModels.putSync(item));
    // }
    RateSetsModel? dbItem = await db.rateSetsModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.rateSetsModels.putSync(dbItem!));
    }
  }

  Future<RateSetsModel?> getRateSetbyID(int id) async {
    return await db.rateSetsModels.get(id);
  }

  Future<List<RateSetsModel?>> getRateSets() async {
    return await db.rateSetsModels.filter().isDeletedEqualTo(false).findAll();
  }

  Future<void> changeActive(int id, bool isActive) async {
    RateSetsModel? model = await db.rateSetsModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.rateSetsModels.putSync(model);
      });
    }
  }

  Future<void> deleteRateSetbyID(int id) async {
    //   final model =
    //       await db.rateSetsModels.filter().ratesetIdEqualTo(id).findFirst();
    //   if (model != null) {
    //     db.writeTxnSync(() {
    //       model.isDeleted = true;
    //       db.rateSetsModels.putSync(model);
    //     });
    //   }
    log(id.toString());
    db.writeTxnSync(() {
      db.rateSetsModels.deleteSync(id);
    });
  }
}
