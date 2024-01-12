import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';

class WorkerRepository {
  final Isar db;

  WorkerRepository(this.db);

  Stream<List<WorkersModel>> streamWorkersList() {
    return db.workersModels.where().watch(fireImmediately: true);
  }

  createWorker({required WorkersModel model}) {
    db.writeTxnSync(() => db.workersModels.putSync(model));
  }

  editWorker({required WorkersModel model}) async {
    WorkersModel? dbItem = await db.workersModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      print('in to fun');
      db.writeTxnSync(() => db.workersModels.putSync(dbItem!));
    }
  }

  deleteWorker(int id) async {
    db.writeTxnSync(() {
      db.workersModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    WorkersModel? model = await db.workersModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.workersModels.putSync(model);
      });
    }
  }
}
