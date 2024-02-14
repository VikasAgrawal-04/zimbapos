import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/pay_in_model.dart';
import 'package:zimbapos/models/global_models/pay_out_model.dart';

class PayInOutRepository {
  Isar db;
  PayInOutRepository(this.db);

  Future<List<PayInModel>> getPayIn() async {
    try {
      return db.payInModels.where(sort: Sort.desc).findAllSync();
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return [];
    }
  }

  Future<List<PayOutModel>> getPayOut() async {
    try {
      return db.payOutModels.where(sort: Sort.desc).findAllSync();
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return [];
    }
  }

  Future<bool> createPayIn(PayInModel data) async {
    try {
      db.writeTxnSync(() => db.payInModels.putSync(data));
      return true;
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return false;
    }
  }

  Future<bool> createPayOut(PayOutModel data) async {
    try {
      db.writeTxnSync(() => db.payOutModels.putSync(data));
      return true;
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return false;
    }
  }
}
