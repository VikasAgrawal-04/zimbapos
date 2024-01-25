import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/items_model.dart';

class ItemsRepository {
  final Isar db;

  ItemsRepository(this.db);

  Stream<List<ItemsModel>> streamItemsList() {
    return db.itemsModels.where().watch(fireImmediately: true);
  }

  createItem({required ItemsModel model}) {
    db.writeTxnSync(() => db.itemsModels.putSync(model));
  }

  editItem({required ItemsModel model}) async {
    ItemsModel? dbItem = await db.itemsModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.itemsModels.putSync(dbItem!));
    }
  }

  deleteItem(int id) async {
    db.writeTxnSync(() {
      db.itemsModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    ItemsModel? model = await db.itemsModels.get(id);
    if (model != null) {
      log(isActive.toString());
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.itemsModels.putSync(model);
      });
    }
  }
}
