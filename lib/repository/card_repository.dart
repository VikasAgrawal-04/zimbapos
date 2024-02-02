import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/card_model.dart';

class CardRepository {
  Isar db;
  CardRepository(this.db);

  Stream<List<CardModel>> streamCards() {
    return db.cardModels
        .filter()
        .isDeletedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Future<void> changeActive(int id, bool isActive) async {
    CardModel? model = await db.cardModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.cardModels.putSync(model);
      });
    }
  }

  Future<void> updateBalance(
      int id, double balance, DateTime lastLoadedDatetime) async {
    CardModel? model = await db.cardModels.get(id);
    if (model != null) {
      model.balance = balance;
      model.lastLoadedDatetime = lastLoadedDatetime;
      db.writeTxnSync(() {
        db.cardModels.putSync(model);
      });
    }
  }

  Future<List<CardModel>> getCards() async {
    return db.cardModels.filter().isDeletedEqualTo(false).findAllSync();
  }

  Future<List<CardModel>> getCardByCardId(int id) async {
    try {
      return db.cardModels
          .filter()
          .idEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findAllSync();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<Tuple2<bool, String>> createCard(CardModel data) async {
    try {
      final dbItem = db.cardModels
          .filter()
          .idEqualTo(data.id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.cardModels.putSync(data));
        return const Tuple2(true, 'Card Created');
      } else {
        throw IsarError('Card Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateCard(CardModel data) async {
    try {
      CardModel? dbItem = db.cardModels
          .filter()
          .idEqualTo(data.id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null && data.id == dbItem.id) {
        dbItem.id = data.id;
        dbItem.outletId = data.outletId;
        dbItem.cardId = data.cardId;
        dbItem.createDatetime = data.createDatetime;
        dbItem.customerEmail = data.customerEmail;
        dbItem.customerMobile = data.customerMobile;
        dbItem.customerName = data.customerName;
        dbItem.lastLoadedDatetime = data.lastLoadedDatetime;
        dbItem.lastUsedDatetime = data.lastUsedDatetime;
        dbItem.isActive = data.isActive;
        dbItem.isDeleted = data.isDeleted;

        //save card
        db.writeTxnSync(() => db.cardModels.putSync(dbItem));
        return const Tuple2(true, 'Card Updated');
      } else {
        throw IsarError('Card Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteCard(int id) async {
    try {
      final dbItem = db.cardModels
          .filter()
          .idEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.cardModels.putSync(dbItem));
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
