import 'package:flutter/material.dart';
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

  createArea({required AreasModel model}) async {
    try {
      final dbItem = await db.areasModels
          .filter()
          .areaNameEqualTo(model.areaName)
          .and()
          .isDeletedEqualTo(false)
          .findFirst();
      if (dbItem == null) {
        db.writeTxnSync(() {
          db.areasModels.putSync(model);
        });
        return true;
      } else {
        return false;
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
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

  Future<bool> deleteArea(String? id) async {
    try {
      final model = await db.areasModels
          .filter()
          .areaIdEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findFirst();
      if (model != null) {
        model.isDeleted = true;
        db.writeTxnSync(() => db.areasModels.putSync(model));
        return true;
      } else {
        return false;
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
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

  Future<bool> updateAreaApi(AreasModel model) async {
    try {
      AreasModel? dbItem = await db.areasModels
          .filter()
          .areaIdEqualTo(model.areaId)
          .and()
          .isDeletedEqualTo(false)
          .findFirst();

      if (dbItem != null) {
        if (model.areaName != dbItem.areaName) {
          final existingAreaName = await db.areasModels
              .filter()
              .areaNameEqualTo(model.areaName)
              .and()
              .isDeletedEqualTo(false)
              .findFirst();
          if (existingAreaName != null) {
            throw IsarError('Duplicate Area Name');
          }
        }
        dbItem.areaName = model.areaName;
        dbItem.rateSetId = model.rateSetId;
        dbItem.extraChargePercent = model.extraChargePercent;
        dbItem.isActive = model.isActive;
        db.writeTxnSync(() => db.areasModels.putSync(dbItem));
      }
      return true;
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
