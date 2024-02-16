import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/models/user_models/user_model.dart';
import 'package:zimbapos/repository/api_repository/user/user_api_repo.dart';

class UserApiRepoImpl implements UserApiRepo {
  @override
  Future<Either<Failure, List<UserModel>>> getAllUsers() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getAllUser);
      final List<dynamic> data = response?['data'];
      final userList = data.map((e) => UserModel.fromMap(e)).toList();
      return Right(userList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserRolesModel>>> getAllUserRoles() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getUserRoles);
      final List<dynamic> data = response?['data'];
      final userRoleList = data.map((e) => UserRolesModel.fromMap(e)).toList();
      return Right(userRoleList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SFMappingModel>>> getAllSF() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getSfMapping);
      final List<dynamic> data = response?['data'];
      final sfList = data.map((e) => SFMappingModel.fromMap(e)).toList();
      return Right(sfList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
