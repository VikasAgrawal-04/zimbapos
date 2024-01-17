import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

class AreasRepository {
  Isar db;
  AreasRepository(this.db);

  Stream<List<AreasModel>> streamAreas() {
    return db.areasModels
        .filter()
        .isDeletedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Future<List<AreasModel>> getAreas() {
    return db.areasModels.filter().isDeletedEqualTo(false).findAll();
  }

  createArea({required AreasModel model}) {
    db.writeTxnSync(() {
      db.areasModels.putSync(model);
    });
  }

  Future<AreasModel?> getAreabyID(int id) async {
    return await db.areasModels.get(id);
  }

  changeActiveArea(int id, bool isActive) async {
    AreasModel? model = await db.areasModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.areasModels.putSync(model);
      });
    }
  }

  deleteAreabyID(int id) async {
    db.writeTxnSync(() {
      db.areasModels.deleteSync(id);
    });
  }

  updateArea(int id,
      {String? areaName,
      double? exchangePercent,
      String? rateSetId,
      bool? isActive}) async {
    //fetch the correct model from db
    AreasModel? model = await db.areasModels.get(id);

    if (model != null) {
      if (areaName != null) {
        model.areaName = areaName;
      }
      if (exchangePercent != null) {
        model.extraChargePercent = exchangePercent;
      }
      if (rateSetId != null) {
        model.rateSetId = rateSetId;
      }
      if (isActive != null) {
        model.isActive = isActive;
      }

      db.writeTxnSync(() {
        db.areasModels.putSync(model);
      });
    }
  }
}
