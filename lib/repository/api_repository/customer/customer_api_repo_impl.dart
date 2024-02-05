import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/error/exception.dart';

import 'package:zimbapos/global/error/failures.dart';

import '../../../global/utils/constant/api_endpoints.dart';
import '../../../global/utils/helpers/helpers.dart';
import '../../../models/global_models/customer_model.dart';
import 'customer_api_repo.dart';

class CustomerApiRepoImpl implements CustomerApiRepo {
  @override
  Future<Either<Failure, List<CustomerModel>>> getCustomerList() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getCustomer);
      final List<dynamic> data = response?['data'];
      final List<CustomerModel> customerList =
          data.map((item) => CustomerModel.fromJson(item)).toList();
      return Right(customerList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createCustomer(
      CustomerModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createCustomer,
        queryParams: item.toJson(),
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
  Future<Either<Failure, Map<String, dynamic>>> updateCustomer(
      CustomerModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.updateCustomer,
        queryParams: item.toJson(),
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
  Future<Either<Failure, Map<String, dynamic>>> deleteCustomer(
      String customerId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.delete, EndPoints.deleteCustomerCategory,
          queryParams: {
            "customer_id": customerId,
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
