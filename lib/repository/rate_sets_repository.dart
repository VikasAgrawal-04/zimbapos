import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';

class RateSetsRepository {
  Isar db;
  RateSetsRepository(this.db);

  Stream<List<RateSetsModel>> streamRateSets() {
    return db.rateSetsModels.where().watch(fireImmediately: true);
  }

  createRateSet({required RateSetsModel model}) {
    db.writeTxnSync(() {
      db.rateSetsModels.putSync(model);
    });
  }

  updateRateSet({required RateSetsModel model}) async {
    RateSetsModel? dbItem =
        await db.rateSetsModels.get(model.ratesetId!.toInt());
    // log(model.ratesetName.toString());
    // log(model.ratesetId.toString());
    // log(dbItem!.ratesetName.toString());
    if (dbItem != null) {
      dbItem.ratesetName = model.ratesetName;
      db.writeTxnSync(() {
        db.rateSetsModels.putSync(dbItem);
      });
      log("updated name: ${dbItem.ratesetName}");
    }
  }

  Future<RateSetsModel?> getRateSetbyID(int id) async {
    return await db.rateSetsModels.get(id);
  }

  Future<List<RateSetsModel?>> getRateSets() async {
    return await db.rateSetsModels.where().findAll();
  }

  changeActive(int id, bool isActive) async {
    RateSetsModel? model = await db.rateSetsModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.rateSetsModels.putSync(model);
      });
    }
  }

  deleteRateSetbyID(int id) async {
    db.writeTxnSync(() {
      db.rateSetsModels.deleteSync(id);
    });
  }
}
