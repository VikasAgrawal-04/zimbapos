import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/request_models/temp_bill_request_model.dart';
import 'package:zimbapos/repository/api_repository/bills/bill_api_repo.dart';

class BillApiRepoImpl implements BillApiRepo {
  @override
  Future<Either<Failure, Map<String, dynamic>>> createKot(
      TempBillRequestModel data) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.post, EndPoints.createKot,
          queryParams: data.toJson());
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
  Future<Either<Failure, TempBillRequestModel>> getTempBill(
      String tableId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.get, EndPoints.getTempBill,
          queryParams: {"tableId": tableId});
      final data = response?['data'];
      return Right(TempBillRequestModel.fromJson(data));
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteKotItem(
      String tableId, String itemId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.delete, EndPoints.deleteKotItem,
          queryParams: {"table_id": tableId, "item_id": itemId});
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
  Future<Either<Failure, Map<String, dynamic>>> createFinalBill(
      String tableId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.post, EndPoints.createFinalBill,
          queryParams: {"table_id": tableId, "shift_id": 1});
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
