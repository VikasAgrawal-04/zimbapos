import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';

class TaxesRepository {
  final Isar db;

  TaxesRepository(this.db);

  Stream<List<TaxModel>> streamTaxList() {
    return db.taxModels.where().watch(fireImmediately: true);
  }

  createTax({required TaxModel model}) {
    db.writeTxnSync(() => db.taxModels.putSync(model));
  }

  Future<List<TaxModel?>> getAllTaxes() async {
    return await db.taxModels.filter().isDeletedEqualTo(false).findAll();
  }

  editTax({required TaxModel model}) async {
    TaxModel? dbItem = await db.taxModels.get(model.id);
    if (dbItem != null) {
      dbItem = model;
      log('in to fun');
      db.writeTxnSync(() => db.taxModels.putSync(dbItem!));
    }
  }

  deleteTax(int id) async {
    db.writeTxnSync(() {
      db.taxModels.deleteSync(id);
    });
  }

  changeActive(int id, bool isActive) async {
    TaxModel? model = await db.taxModels.get(id);
    if (model != null) {
      log(isActive.toString());
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.taxModels.putSync(model);
      });
    }
  }

  //APIs

  Future<List<TaxModel>> getTaxList() async {
    try {
      return db.taxModels.filter().isDeletedEqualTo(false).findAllSync();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<Tuple2<bool, String>> createTaxApi(TaxModel data) async {
    try {
      final dbItem = db.taxModels
          .filter()
          .taxNameEqualTo(data.taxName)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.taxModels.putSync(data));
        return const Tuple2(true, 'Tax Created Successfully');
      } else {
        throw IsarError('Tax Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateTax(TaxModel data) async {
    try {
      TaxModel? dbItem = db.taxModels
          .filter()
          .taxIdEqualTo(data.taxId)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        if (data.taxName != dbItem.taxName) {
          final existingTax = db.taxModels
              .filter()
              .taxNameEqualTo(data.taxName)
              .and()
              .isDeletedEqualTo(false)
              .findFirstSync();
          if (existingTax != null) {
            throw IsarError('Tax Already Exists');
          }
        }
        dbItem.taxName = data.taxName;
        dbItem.taxType = data.taxType;
        dbItem.taxPercent = data.taxPercent;
        dbItem.isActive = data.isActive;
        db.writeTxnSync(() => db.taxModels.putSync(dbItem));
        return const Tuple2(true, 'Tax Updated!');
      } else {
        throw IsarError('Tax Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteTaxApi(String? id) async {
    try {
      final dbItem = db.taxModels
          .filter()
          .taxIdEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.taxModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('Tax Does Not Exist');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
