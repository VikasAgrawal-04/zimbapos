import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/error/exception.dart';

import 'package:zimbapos/global/error/failures.dart';

import 'package:zimbapos/models/global_models/customer_category_model.dart';

import '../../../global/utils/constant/api_endpoints.dart';
import '../../../global/utils/helpers/helpers.dart';
import 'customer_category_api_repo.dart';

class CustomerCategoryApiRepoImpl implements CustomerCategoryApiRepo {
  @override
  Future<Either<Failure, List<CustomerCategoryModel>>>
      getCustomerCategories() async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.get, EndPoints.getCustomerCategories);
      final List<dynamic> data = response?['data'];
      final List<CustomerCategoryModel> customerCategories =
          data.map((item) => CustomerCategoryModel.fromMap(item)).toList();
      return Right(customerCategories);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createCustomerCategories(
      CustomerCategoryModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createCustomerCategory,
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
  Future<Either<Failure, Map<String, dynamic>>> updateCustomerCategory(
      CustomerCategoryModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.updateCustomerCategory,
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
  Future<Either<Failure, Map<String, dynamic>>> deleteCustomerCategory(
      String customerCategoryId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.delete, EndPoints.deleteCustomerCategory,
          queryParams: {
            "cusCatId": customerCategoryId,
          });
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
