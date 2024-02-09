import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/items_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';

class ItemsRepository {
  final Isar db;

  ItemsRepository(this.db);

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
        final itemGrp = await db.itemGroupModels
            .filter()
            .itemGroupIdEqualTo(data.itemGroupId)
            .findFirst();
        final mainGrp = await db.mainGroupModels
            .filter()
            .mainGroupIdEqualTo(itemGrp?.mainGroupId)
            .findFirst();
        final tax = await db.taxModels
            .filter()
            .taxIdEqualTo(data.taxId)
            .and()
            .isDeletedEqualTo(false)
            .findFirst();
        data.rateWithTax =
            Helpers.taxPrice(tax?.taxPercent ?? 0.0, data.itemRate ?? 0.0);
        data.taxDetails.value = tax;
        data.mainGroupDetails.value = mainGrp;
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

        final itemGrp = await db.itemGroupModels
            .filter()
            .itemGroupIdEqualTo(data.itemGroupId)
            .findFirst();
        final mainGrp = await db.mainGroupModels
            .filter()
            .mainGroupIdEqualTo(itemGrp?.mainGroupId)
            .findFirst();
        final tax = await db.taxModels
            .filter()
            .taxIdEqualTo(data.taxId)
            .and()
            .isDeletedEqualTo(false)
            .findFirst();
        dbItem.rateWithTax =
            Helpers.taxPrice(tax?.taxPercent ?? 0.0, dbItem.itemRate ?? 0.0);
        dbItem.taxDetails.value = tax;
        data.mainGroupDetails.value = mainGrp;
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
