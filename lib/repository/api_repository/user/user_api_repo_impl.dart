import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/screen_function_junction_model.dart';
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

  @override
  Future<Either<Failure, Map<String, dynamic>>> createUserRole(
      UserRolesModel item) async {
    try {
      item.outletId = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createUserRole,
        queryParams: item.toMap(),
      );
      return Right(response ?? {});
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteUserRole(
      String userRoleId) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.delete,
        EndPoints.deleteUserRole,
        queryParams: {
          "role_id": userRoleId,
        },
      );
      return Right(response ?? {});
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateUserRole(
      UserRolesModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.updateUserRole,
        queryParams: item.toMap(),
      );
      return Right(response ?? {});
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  //
  @override
  Future<Either<Failure, Map<String, dynamic>>> createUser(
      UserModel item) async {
    try {
      item.outletID = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createUser,
        queryParams: item.toMap(),
      );
      return Right(response ?? {});
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteUser(
      String userId) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.delete,
        EndPoints.deleteUserRole,
        queryParams: {
          "user_id": userId,
        },
      );
      return Right(response ?? {});
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateUser(
      UserModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.editUser,
        queryParams: item.toMap(),
      );
      return Right(response ?? {});
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createRoleSFJunction(
      List<ScreenFunctionJunctionModel> data) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.post, EndPoints.createScrnFnJunction,
          queryParams: {'data': data.map((e) => e.toJson()).toList()});
      return Right(response ?? {});
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ScreenFunctionJunctionModel>>> getSfRolesAdmin(
      String outletId, String roleId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.get, EndPoints.getRoleSFAdmin,
          queryParams: {'role_id': roleId, 'outlet_id': outletId});
      final List<dynamic> data = response?['data'];
      return Right(
          data.map((e) => ScreenFunctionJunctionModel.fromMap(e)).toList());
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateRoleSFJunction(
      List<ScreenFunctionJunctionModel> data) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.post, EndPoints.updateScrnFnJunction,
          queryParams: {'data': data.map((e) => e.toJson()).toList()});
      return Right(response ?? {});
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
