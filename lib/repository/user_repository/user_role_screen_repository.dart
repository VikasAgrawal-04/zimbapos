import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/user_role_screen_function_model.dart';

class UserRoleScreenRepository {
  final Isar db;
  UserRoleScreenRepository(this.db);

  Future<List<UserRoleScreenFunctionModel>> getAllScreenFunctions() async {
    try {
      final userRoleFunctions =
          db.userRoleScreenFunctionModels.where().findAllSync();
      return userRoleFunctions;
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return [];
    }
  }

  Future<Tuple2<bool, String>> createUserScreenFunctions(
      UserRoleScreenFunctionModel data) async {
    try {
      final dbItem = db.userRoleScreenFunctionModels
          .filter()
          .outletIdEqualTo(data.outletId)
          .and()
          .screenFunctionNameEqualTo(data.screenFunctionName)
          .and()
          .roleIdEqualTo(data.roleId)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.userRoleScreenFunctionModels.putSync(data));
        return const Tuple2(true, 'Screen Function Created Successfully!');
      } else {
        throw IsarError('Screen Function Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return Tuple2(false, error.message.toString());
    }
  }

  Future<Tuple2<bool, String>> updateUserScreenFunctions(
      UserRoleScreenFunctionModel data) async {
    try {
      UserRoleScreenFunctionModel? dbItem = db.userRoleScreenFunctionModels
          .filter()
          .screenFunctionIdEqualTo(data.screenFunctionId)
          .findFirstSync();
      if (dbItem != null) {
        if (data.screenFunctionName != dbItem.screenFunctionName) {
          final existingFunction = db.userRoleScreenFunctionModels
              .filter()
              .screenFunctionNameEqualTo(data.screenFunctionName)
              .and()
              .outletIdEqualTo(data.outletId)
              .and()
              .roleIdEqualTo(data.roleId)
              .findFirstSync();
          if (existingFunction != null) {
            throw IsarError('Screen Function Already Exists');
          }
        }
        dbItem.canChange = data.canChange;
        dbItem.canView = data.canView;
        dbItem.screenFunctionName = data.screenFunctionName;
        db.writeTxnSync(() => db.userRoleScreenFunctionModels.putSync(dbItem));
        return const Tuple2(true, 'Screen Function Updated');
      } else {
        throw IsarError('Screen Function Not Found!');
      }
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return Tuple2(false, error.message.toString());
    }
  }

  Future<bool> deleteScreenFunction(String? id) async {
    try {
      final dbItem = db.userRoleScreenFunctionModels
          .filter()
          .screenFunctionIdEqualTo(id)
          .findFirstSync();
      if (dbItem != null) {
        db.writeTxnSync(
            () => db.userRoleScreenFunctionModels.deleteSync(dbItem.id));
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
