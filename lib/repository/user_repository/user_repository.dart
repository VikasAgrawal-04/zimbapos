import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/user_models/user_model.dart';

class UserRepository {
  final Isar db;
  UserRepository(this.db);

  Future<List<UserModel>> getAllUsers() async {
    return db.userModels.filter().isDeletedEqualTo(false).findAllSync();
  }

  Future<UserModel?> getUser(String token) async {
    try {
      final user = db.userModels.filter().tokenEqualTo(token).findFirstSync();
      if (user != null) {
        return user;
      } else {
        throw IsarError("No User Found");
      }
    } on IsarError catch (error, stack) {
      debugPrint("Error ${error.message}");
      debugPrintStack(stackTrace: stack);
      return null;
    }
  }

  Future<Tuple2<bool, String>> loginUser(UserModel user) async {
    try {
      final dbUser =
          db.userModels.filter().logInIdEqualTo(user.logInId).findFirstSync();
      if (dbUser == null) {
        throw IsarError('User Does Not Exist');
      } else {
        final dbUserPassword = dbUser.password;
        final userPass = Helpers.checkPassword(user.password!, dbUserPassword!);
        if (userPass == false) {
          throw IsarError('Invalid Password');
        } else {
          return Tuple2(true, dbUser.token.toString());
        }
      }
    } on IsarError catch (error) {
      return Tuple2(false, error.message.toString());
    }
  }

  Future<Tuple2<bool, String>> registerUser(UserModel user) async {
    try {
      final dbItem = await db.userModels
          .filter()
          .mobileEqualTo(user.mobile)
          .or()
          .logInIdEqualTo(user.logInId)
          .findFirst();
      if (dbItem == null) {
        db.writeTxnSync(() => db.userModels.putSync(user));
        return const Tuple2(true, "User Created Successfully");
      } else {
        throw IsarError('User Already Exists');
      }
    } on IsarError catch (error) {
      return Tuple2(false, error.message.toString());
    }
  }
}
