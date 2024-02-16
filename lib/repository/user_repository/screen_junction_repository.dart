import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/screen_function_junction_model.dart';

class ScreenJunctionRepository {
  final Isar db;
  ScreenJunctionRepository(this.db);

  Future<List<ScreenFunctionJunctionModel>> getAllRoleScrnFn(
      String outletId) async {
    try {
      final userRoleFunctions = db.screenFunctionJunctionModels
          .filter()
          .outletIdEqualTo(outletId)
          .findAllSync();
      return userRoleFunctions;
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return [];
    }
  }

  Future<List<ScreenFunctionJunctionModel>> getScrnFnForRoles(
      String roleId, String outletId) async {
    try {
      final userRoleFunctions = db.screenFunctionJunctionModels
          .filter()
          .outletIdEqualTo(outletId)
          .and()
          .roleIdEqualTo(roleId)
          .findAllSync();
      return userRoleFunctions;
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return [];
    }
  }

  Future<Tuple2<bool, String>> createScrnFnJunction(
      ScreenFunctionJunctionModel data) async {
    try {
      final dbItem = db.screenFunctionJunctionModels
          .filter()
          .outletIdEqualTo(data.outletId)
          .and()
          .screenFunctionIdEqualTo(data.screenFunctionId)
          .and()
          .roleIdEqualTo(data.roleId)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.screenFunctionJunctionModels.putSync(data));
        return const Tuple2(
            true, 'Screen Function Junction Created Successfully!');
      } else {
        throw IsarError('Screen Function Junction Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return Tuple2(false, error.message.toString());
    }
  }

  Future<Tuple2<bool, String>> updateScrnFnJunction(
      ScreenFunctionJunctionModel data) async {
    try {
      ScreenFunctionJunctionModel? dbItem = db.screenFunctionJunctionModels
          .filter()
          .screenFunctionIdEqualTo(data.screenFunctionId)
          .and()
          .outletIdEqualTo(data.outletId)
          .and()
          .roleIdEqualTo(data.roleId)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.canChange = data.canChange;
        dbItem.canView = data.canView;
        db.writeTxnSync(() => db.screenFunctionJunctionModels.putSync(dbItem));
        return const Tuple2(true, 'Screen Function Junction Updated');
      } else {
        throw IsarError('Screen Function Junction Not Found!');
      }
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return Tuple2(false, error.message.toString());
    }
  }

  Future<bool> deleteScrnFnJunction(
      String sfId, String roleId, String outletId) async {
    try {
      final dbItem = db.screenFunctionJunctionModels
          .filter()
          .screenFunctionIdEqualTo(sfId)
          .and()
          .roleIdEqualTo(roleId)
          .and()
          .outletIdEqualTo(outletId)
          .findFirstSync();
      if (dbItem != null) {
        db.writeTxnSync(
            () => db.screenFunctionJunctionModels.deleteSync(dbItem.id));
        return true;
      } else {
        throw IsarError('Screen Function Not Found!');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
