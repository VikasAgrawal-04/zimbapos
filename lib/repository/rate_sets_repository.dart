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

  Future<RateSetsModel?> getRateSetbyID(int id) async {
    return await db.rateSetsModels.get(id);
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
