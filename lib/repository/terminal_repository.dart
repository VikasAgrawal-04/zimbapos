import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/models/global_models/terminal_model.dart';

class TerminalRepository {
  final Isar db;
  TerminalRepository(this.db);

  Future<List<TerminalModel>> getAllTerminals() async {
    try {
      return db.terminalModels.where().findAllSync();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<int> getTerminalId(String outletId, String deviceId) async {
    try {
      final dbItem = db.terminalModels
          .filter()
          .outletIdEqualTo(outletId)
          .and()
          .deviceIdEqualTo(deviceId)
          .findFirstSync();
      if (dbItem == null) {
        throw IsarError("Device Not Registered");
      } else {
        return dbItem.terminalId!;
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return -1;
    }
  }

  Future<Tuple2<bool, String>> createTerminal(TerminalModel data) async {
    try {
      final dbItem = db.terminalModels
          .filter()
          .terminalIdEqualTo(data.terminalId)
          .and()
          .outletIdEqualTo(data.outletId)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.terminalModels.putSync(data));
        return const Tuple2(true, 'Terminal Created Successfully');
      } else {
        throw IsarError('Terminal Id Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateTerminalWithDeviceId(
      TerminalModel data) async {
    try {
      final dbItem = db.terminalModels
          .filter()
          .terminalIdEqualTo(data.terminalId)
          .and()
          .outletIdEqualTo(data.outletId)
          .findFirstSync();
      if (dbItem == null) {
        throw IsarError('Terminal Not Found. Ask Admin To Create Terminal');
      } else {
        if (dbItem.deviceId != null) {
          throw IsarError(
              'Terminal Is Already Registered with another deviceId');
        } else {
          dbItem.deviceId = data.deviceId;
          db.writeTxnSync(() => db.terminalModels.putSync(dbItem));
          return Tuple2(
              true, 'Device Registred to Terminal ID ${dbItem.terminalId}');
        }
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteTerminal(TerminalModel data) async {
    try {
      final dbItem = db.terminalModels
          .filter()
          .outletIdEqualTo(data.outletId)
          .and()
          .terminalIdEqualTo(data.terminalId)
          .findFirstSync();
      if (dbItem != null) {
        db.writeTxnSync(() => db.tableModels.delete(dbItem.id));
        return true;
      } else {
        throw IsarError('Terminal Does Not Exists');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
