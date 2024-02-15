import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/models/user_models/user_model.dart';

class UserRolesRepository {
  final Isar db;
  UserRolesRepository(this.db);

  Future<List<UserRolesModel>> getAllUserRoles() async {
    try {
      final userRoles =
          db.userRolesModels.filter().isDeletedEqualTo(false).findAllSync();
      return userRoles;
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return [];
    }
  }

  // Future<Tuple2<bool, UserRolesModel>> getUserRolewithID() async {
  //   try {} on IsarError catch (error) {
  //     debugPrint("Error ${error.message}");
  //     return Tuple2(false, error.message.toString());
  //   }
  // }

  Future<Tuple2<bool, Tuple2<String, UserRolesModel?>>> createUserRole(
      UserRolesModel data) async {
    try {
      final dbItem = db.userRolesModels
          .filter()
          .roleNameEqualTo(data.roleName)
          .and()
          .outletIdEqualTo(data.outletId)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.userRolesModels.putSync(data));

        return Tuple2(true, Tuple2('User Created Successfully', data));
      } else {
        throw IsarError('User Role Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return Tuple2(false, Tuple2(error.message, null));
    }
  }

  Future<Tuple2<bool, String>> updateUserRole(UserRolesModel data) async {
    try {
      UserRolesModel? dbItem = db.userRolesModels
          .filter()
          .roleIdEqualTo(data.roleId)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        if (data.roleName != dbItem.roleName) {
          final existingRole = db.userRolesModels
              .filter()
              .roleNameEqualTo(data.roleName)
              .and()
              .outletIdEqualTo(data.outletId)
              .and()
              .isDeletedEqualTo(false)
              .findFirstSync();
          if (existingRole != null) {
            throw IsarError('User Role Already Exists');
          }
        }
        dbItem.roleName = data.roleName;
        dbItem.isActive = data.isActive;
        db.writeTxnSync(() => db.userRolesModels.putSync(dbItem));
        return const Tuple2(true, 'User Role Updated!');
      } else {
        throw IsarError('User Role Not Found!');
      }
    } on IsarError catch (error) {
      debugPrint("Error ${error.message}");
      return Tuple2(false, error.message.toString());
    }
  }

  Future<bool> deleteUserRole(String? id) async {
    try {
      final dbItem = db.userRolesModels
          .filter()
          .roleIdEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.userRolesModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('User Role Not Found!');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
