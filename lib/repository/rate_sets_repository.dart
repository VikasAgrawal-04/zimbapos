import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';

class RateSetsRepository {
  Isar db;
  RateSetsRepository(this.db);

  Stream<List<RateSetsModel>> streamRateSets() {
    return db.rateSetsModels.where().watch(fireImmediately: true);
  }
}
