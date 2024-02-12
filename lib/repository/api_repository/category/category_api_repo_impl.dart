import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo.dart';

class CategoryApiRepoImpl implements CategoryApiRepo {
  @override
  Future<Either<Failure, List<CategoryModel>>> fetchCategories() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getCategories);
      final List<dynamic> data = response?['data'];
      final List<CategoryModel> categories =
          data.map((e) => CategoryModel.fromMap(e)).toList();
      return Right(categories);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createCategory(
      CategoryModel data) async {
    try {
      data.outletId = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
          RequestType.post, EndPoints.createCategory,
          queryParams: data.toMap());
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
  Future<Either<Failure, Map<String, dynamic>>> deleteCategory(
      String categoryId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.delete, EndPoints.deleteCategory,
          queryParams: {"categoryid": categoryId});
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
  Future<Either<Failure, Map<String, dynamic>>> updateCategory(
      CategoryModel data) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.post, EndPoints.updateCategory,
          queryParams: data.toMap());
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
