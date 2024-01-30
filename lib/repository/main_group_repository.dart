import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

class MainGroupRepository {
  Isar db;
  MainGroupRepository(this.db);

  Future<List<MainGroupModel>> getMainGroups() async {
    return db.mainGroupModels.filter().isDeletedEqualTo(false).findAllSync();
  }

  Future<Tuple2<bool, String>> createMainGroup(MainGroupModel data) async {
    try {
      final dbItem = db.mainGroupModels
          .filter()
          .mainGroupNameEqualTo(data.mainGroupName)
          .and()
          .categoryIdEqualTo(data.categoryId)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.mainGroupModels.putSync(data));
        return const Tuple2(true, 'Main Group Created');
      } else {
        throw IsarError('Main Group Already Exists!');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateMainGroup(MainGroupModel data) async {
    try {
      MainGroupModel? dbItem = db.mainGroupModels
          .filter()
          .mainGroupIdEqualTo(data.mainGroupId)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        if (data.mainGroupName != dbItem.mainGroupName) {
          final existingGroup = db.mainGroupModels
              .filter()
              .mainGroupNameEqualTo(data.mainGroupName)
              .and()
              .isDeletedEqualTo(false)
              .and()
              .categoryIdEqualTo(data.categoryId)
              .findFirstSync();
          if (existingGroup != null) {
            throw IsarError('Main Group Already Exists');
          }
        }
        dbItem.mainGroupName = data.mainGroupName;
        dbItem.isActive = data.isActive;
        dbItem.categoryId = data.categoryId;

        db.writeTxnSync(() => db.mainGroupModels.putSync(dbItem));
        return const Tuple2(true, 'Main Group Updated!');
      } else {
        throw IsarError('Main Group Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteMainGroup(String? id) async {
    try {
      final dbItem = db.mainGroupModels
          .filter()
          .mainGroupIdEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.mainGroupModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('Main Group Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
