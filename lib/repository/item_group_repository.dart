import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

class ItemGroupRepository {
  Isar db;
  ItemGroupRepository(this.db);

  Future<List<ItemGroupModel>> getItemsByMainGroupId(String id) async {
    try {
      return db.itemGroupModels
          .filter()
          .mainGroupIdEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findAllSync();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<Tuple2<bool, String>> createItemGroup(ItemGroupModel data) async {
    try {
      final dbItem = db.itemGroupModels
          .filter()
          .mainGroupIdEqualTo(data.mainGroupId)
          .and()
          .itemGroupNameEqualTo(data.itemGroupName)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.itemGroupModels.putSync(data));
        return const Tuple2(true, 'Item Group Created');
      } else {
        throw IsarError('Item Group Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateItemGroup(ItemGroupModel data) async {
    try {
      ItemGroupModel? dbItem = db.itemGroupModels
          .filter()
          .itemGroupIdEqualTo(data.itemGroupId)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        if (data.itemGroupName != dbItem.itemGroupName) {
          final existingGroup = db.itemGroupModels
              .filter()
              .itemGroupNameEqualTo(data.itemGroupName)
              .and()
              .isDeletedEqualTo(false)
              .and()
              .mainGroupIdEqualTo(data.mainGroupId)
              .findFirstSync();
          if (existingGroup != null) {
            throw IsarError('Item Group Already Exists');
          }
        }
        dbItem.mainGroupId = data.mainGroupId;
        dbItem.itemGroupName = data.itemGroupName;
        dbItem.isActive = data.isActive;
        dbItem.printerId = data.printerId;

        db.writeTxnSync(() => db.itemGroupModels.putSync(dbItem));
        return const Tuple2(true, 'Item Group Updated');
      } else {
        throw IsarError('Item Group Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteItemGroup(String? id) async {
    try {
      final dbItem = db.itemGroupModels
          .filter()
          .itemGroupIdEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.itemGroupModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('Item Group Not Found');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
