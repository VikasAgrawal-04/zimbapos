import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

class TableRepository {
  Isar db;
  TableRepository(this.db);

  Stream<List<TableModel>> streamRateSets() {
    return db.tableModels.where().watch(fireImmediately: true);
  }
}
