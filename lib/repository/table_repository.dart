import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

class TableRepository {
  Isar db;
  TableRepository(this.db);

  Stream<List<TableModel>> streamTables() {
    return db.tableModels.where().watch(fireImmediately: true);
  }

  createTable({required TableModel data}) {
    db.writeTxnSync(() => db.tableModels.putSync(data));
  }

  updateTable({required TableModel data}) async {
    // log(data.id.toString());
    TableModel? dbItem = await db.tableModels.get(data.id);
    // log(dbItem!.tableName.toString());
    if (dbItem != null) {
      dbItem.tableName = data.tableName;
      dbItem.areaId = data.areaId;

      db.writeTxnSync(() => db.tableModels.putSync(dbItem));
    }
  }

  changeActive(int id, bool isActive) async {
    TableModel? model = await db.tableModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.tableModels.putSync(model);
      });
    }
  }

  deleteTable(int id) async {
    db.writeTxnSync(() {
      db.tableModels.deleteSync(id);
    });
  }
}
