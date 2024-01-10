import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

class AreasRepository {
  Isar db;
  AreasRepository(this.db);

  Stream<List<AreasModel>> streamAreas() {
    return db.areasModels.where().watch(fireImmediately: true);
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
}
