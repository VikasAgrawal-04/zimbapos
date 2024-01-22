import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

class TableRepository {
  Isar db;
  TableRepository(this.db);

  Stream<List<TableModel>> streamTables() {
    return db.tableModels
        .filter()
        .isDeletedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Future<List<TableModel>> getAllTables() async {
    return await db.tableModels.filter().isDeletedEqualTo(false).findAll();
  }

  Future createTable({required TableModel data}) async {
    try {
      final dbItem = await db.tableModels
          .filter()
          .tableNameEqualTo(data.tableName)
          .and()
          .areaIdEqualTo(data.areaId)
          .findFirst();
      if (dbItem == null) {
        db.writeTxnSync(() => db.tableModels.putSync(data));
        return true;
      } else {
        return false;
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }

  Future<void> updateTable({required TableModel data}) async {
    final dbItem = await db.tableModels
        .filter()
        .tableIdEqualTo(data.tableId)
        .and()
        .isDeletedEqualTo(false)
        .findFirst();
    if (dbItem != null) {
      dbItem.tableName = data.tableName;
      dbItem.areaId = data.areaId;
      dbItem.isActive = data.isActive;
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
    // final model =
    //     await db.tableModels.filter().tableIdEqualTo(tableId).findFirst();
    // if (model != null) {
    //   model.isDeleted = true;
    //   db.writeTxnSync(() => db.tableModels.putSync(model));
    // }
    log(id.toString());
    db.writeTxnSync(() {
      db.tableModels.deleteSync(id);
    });
  }

  Future<List<TableModel>> fetchTableById(String? id) async {
    try {
      final tables = db.tableModels
          .filter()
          .areaIdEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findAllSync();
      return tables;
    } catch (e) {
      return [];
    }
  }
}
