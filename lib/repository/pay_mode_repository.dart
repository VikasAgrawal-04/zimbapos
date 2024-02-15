import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/pay_mod_master_model.dart';

class PayModeMasterRepository {
  final Isar db;
  PayModeMasterRepository(this.db);

  Future<List<PayModMasterModel>> fetchAllPayModes(String outletId) async {
    try {
      return db.payModMasterModels
          .filter()
          .outletIdEqualTo(outletId)
          .and()
          .isDeletedEqualTo(false)
          .findAllSync();
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return [];
    }
  }

  Future<Tuple2<bool, String>> createPayMode(PayModMasterModel data) async {
    try {
      final dbItem = db.payModMasterModels
          .filter()
          .payTypeNameEqualTo(data.payTypeName)
          .and()
          .isDeletedEqualTo(false)
          .and()
          .outletIdEqualTo(data.outletId)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.payModMasterModels.putSync(data));
        return const Tuple2(true, 'Pay Mode Created');
      } else {
        throw IsarError('Pay Mode Already Exists');
      }
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updatePayMode(PayModMasterModel data) async {
    try {
      PayModMasterModel? dbItem = db.payModMasterModels
          .filter()
          .payCodeEqualTo(data.payCode)
          .and()
          .isDeletedEqualTo(false)
          .and()
          .outletIdEqualTo(data.outletId)
          .findFirstSync();
      if (dbItem != null) {
        if (data.payTypeName != dbItem.payTypeName) {
          final existingItem = db.payModMasterModels
              .filter()
              .payTypeNameEqualTo(data.payTypeName)
              .and()
              .isDeletedEqualTo(false)
              .and()
              .outletIdEqualTo(data.outletId)
              .findFirstSync();
          if (existingItem != null) {
            throw IsarError('Pay Mode Already Exists');
          }
        }
        dbItem.payTypeName = data.payTypeName;
        dbItem.isActive = data.isActive;
        db.writeTxnSync(() => db.payModMasterModels.putSync(dbItem));
        return const Tuple2(true, 'Pay Mode Updated');
      } else {
        throw IsarError('Pay Mode Not Found');
      }
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deletePayMode(String? payCode) async {
    try {
      PayModMasterModel? dbItem = db.payModMasterModels
          .filter()
          .payCodeEqualTo(payCode)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.payModMasterModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('Pay Mode Not Found');
      }
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return false;
    }
  }
}
