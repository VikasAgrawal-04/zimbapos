import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../models/global_models/card_log_model.dart';

class CardLogRepository {
  Isar db;
  CardLogRepository(this.db);

  Stream<List<CardLogModel>> streamCardLogs() {
    return db.cardLogModels.where().watch(fireImmediately: true);
  }

  // Future<void> changeActive(int id, bool isActive) async {
  //   CardLogModel? model = await db.cardLogModels.get(id);
  //   if (model != null) {
  //     model.isActive = isActive;
  //     db.writeTxnSync(() {
  //       db.cardLogModels.putSync(model);
  //     });
  //   }
  // }

  Future<List<CardLogModel>> getAllCardLogs() async {
    return db.cardLogModels.where().findAllSync();
  }

  Future<List<CardLogModel>> getCardLogByCardId(int id) async {
    try {
      return db.cardLogModels.filter().cardLogIdEqualTo(id).findAllSync();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<Tuple2<bool, String>> createCardLog(CardLogModel data) async {
    try {
      final dbItem =
          db.cardLogModels.filter().cardLogIdEqualTo(data.id).findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.cardLogModels.putSync(data));
        return const Tuple2(true, 'Card Log Created');
      } else {
        throw IsarError('Card Log Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateCardLog(CardLogModel data) async {
    try {
      CardLogModel? dbItem =
          db.cardLogModels.filter().cardLogIdEqualTo(data.id).findFirstSync();
      if (dbItem != null && data.id == dbItem.id) {
        dbItem.id = data.id;
        dbItem.outletId = data.outletId;
        dbItem.cardLogId = data.cardLogId;
        dbItem.actionType = data.actionType;
        dbItem.amount = data.amount;
        dbItem.customerEmail = data.customerEmail;
        dbItem.customerMobile = data.customerMobile;
        dbItem.customerName = data.customerName;
        dbItem.entryDatetime = data.entryDatetime;
        dbItem.loggedUserId = data.loggedUserId;
        dbItem.newBalance = data.newBalance;
        dbItem.payMode = data.payMode;

        //save card log
        db.writeTxnSync(() => db.cardLogModels.putSync(dbItem));
        return const Tuple2(true, 'Card log Updated');
      } else {
        throw IsarError('Card log Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteCardLog(int id) async {
    try {
      final dbItem =
          db.cardLogModels.filter().cardLogIdEqualTo(id).findFirstSync();
      if (dbItem != null) {
        // dbItem.isDeleted = true;
        db.writeTxnSync(() => db.cardLogModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('Card Not Found');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
