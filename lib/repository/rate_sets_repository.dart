import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
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

  bool createRateSet({required RateSetsModel model}) {
    try {
      final dbItem = db.rateSetsModels
          .filter()
          .ratesetNameEqualTo(model.ratesetName)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem == null) {
        model.ratesetId = Helpers.generateUuId();
        db.writeTxnSync(() {
          db.rateSetsModels.putSync(model);
        });
        return true;
      } else {
        return false;
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }

  Future<void> updateRateSet({required RateSetsModel model}) async {
    final item = await db.rateSetsModels
        .filter()
        .ratesetIdEqualTo(model.ratesetId)
        .and()
        .isDeletedEqualTo(false)
        .findFirst();
    if (item != null) {
      item.ratesetName = model.ratesetName;
      item.isActive = model.isActive;
      db.writeTxnSync(() => db.rateSetsModels.putSync(item));
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

  Future<void> deleteRateSetbyID(String? id) async {
    final model =
        await db.rateSetsModels.filter().ratesetIdEqualTo(id).findFirst();
    if (model != null) {
      db.writeTxnSync(() {
        model.isDeleted = true;
        db.rateSetsModels.putSync(model);
      });
    }
  }
}
