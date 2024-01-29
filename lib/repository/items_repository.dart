import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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

  // API Calls
  Future<List<ItemsModel>> getItems() async {
    try {
      return db.itemsModels.filter().isDeletedEqualTo(false).findAllSync();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<List<ItemsModel>> getItemsByGroupId(String? groupId) async {
    try {
      return db.itemsModels
          .filter()
          .itemGroupIdEqualTo(groupId)
          .and()
          .isDeletedEqualTo(false)
          .findAllSync();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<Tuple2<bool, String>> createItemApi(ItemsModel data) async {
    try {
      final dbItem = db.itemsModels
          .filter()
          .itemGroupIdEqualTo(data.itemGroupId)
          .and()
          .itemNameEqualTo(data.itemName)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.itemsModels.putSync(data));
        return const Tuple2(true, 'Item Created Successfully');
      } else {
        throw IsarError('Item Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateItem(ItemsModel data) async {
    try {
      ItemsModel? dbItem = db.itemsModels
          .filter()
          .itemIdEqualTo(data.itemId)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        if (data.itemName != dbItem.itemName) {
          final existingItem = db.itemsModels
              .filter()
              .itemNameEqualTo(data.itemName)
              .and()
              .isDeletedEqualTo(false)
              .and()
              .itemGroupIdEqualTo(data.itemGroupId)
              .findFirstSync();
          if (existingItem != null) {
            throw IsarError('Item Already Exists');
          }
        }
        dbItem.itemName = data.itemName;
        dbItem.itemGroupId = data.itemGroupId;
        dbItem.foodType = data.foodType;
        dbItem.isAlcohol = data.isAlcohol;
        dbItem.itemRate = data.itemRate;
        dbItem.taxId = data.taxId;
        dbItem.rateWithTax = data.rateWithTax;
        dbItem.isOpenItem = data.isOpenItem;
        dbItem.isWeightItem = data.isWeightItem;
        dbItem.imgLink = data.imgLink;
        dbItem.isActive = data.isActive;

        db.writeTxnSync(() => db.itemsModels.putSync(dbItem));
        return const Tuple2(true, 'Item Updated');
      } else {
        throw IsarError('Item Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteItemApi(String? id) async {
    try {
      final dbItem = db.itemsModels
          .filter()
          .itemIdEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.itemsModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('Item Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
