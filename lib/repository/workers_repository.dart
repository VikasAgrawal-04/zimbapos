import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';

class WorkerRepository {
  final Isar db;

  WorkerRepository(this.db);

  Stream<List<WorkersModel>> streamWorkersList() {
    return db.workersModels.where().watch(fireImmediately: true);
  }

  createWorker({required WorkersModel model}) {
    db.writeTxnSync(() => db.workersModels.put(model));
  }
}
