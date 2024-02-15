import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/services/user_management_service/user_role_service/user_role_service.dart';
import '../../../global/error/exception.dart';
import '../../../global/error/failures.dart';
import '../../../models/global_models/user_role_screen_function_model.dart';

class UserRoleServiceImpl implements UserRoleService {
  @override
  Future<Either<Failure, List<UserRolesModel>>> getUserRoles() async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.get,
        EndPoints.getUserRoles,
      );

      List<dynamic> data = response?['data'];
      List<UserRolesModel> list = [];
      for (var element in data) {
        list.add(UserRolesModel.fromMap(element));
      }
      return Right(list);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserRolesModel>> createUserRole({
    required String roleName,
    required String outletId,
  }) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createUserRole,
        queryParams: <String, dynamic>{
          "roleName": roleName,
          "outletId": outletId,
        },
      );
      final UserRolesModel model = UserRolesModel.fromMap(response?['data']);
      return Right(model);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteUserRole() async {
    try {
      return const Right('void');
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateUser() async {
    try {
      return const Right('void');
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserRoleScreenFunctionModel>>>
      getAllScreenFunctions() async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.get,
        EndPoints.getAllScreenFn,
      );
      List<dynamic> data = response?['data'];
      List<UserRoleScreenFunctionModel> listScreen = [];
      for (var element in data) {
        listScreen.add(UserRoleScreenFunctionModel.fromMap(element));
      }
      return Right(listScreen);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> createScreenFunction(
      {required UserRoleScreenFunctionModel model}) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.post, EndPoints.createScreenFn,
          queryParams: model.toMap());
      return Right(response?['data']);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
