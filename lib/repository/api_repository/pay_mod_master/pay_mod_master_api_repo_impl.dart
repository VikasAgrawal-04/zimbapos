import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/pay_mod_master_model.dart';

import 'pay_mod_master_repo.dart';

class PayModMasterApiRepoImpl implements PayModMasterApiRepo {
  @override
  Future<Either<Failure, List<PayModMasterModel>>>
      fetchPayModMasterList() async {
    try {
      String? outletId = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
          RequestType.get, EndPoints.getPayMode,
          queryParams: {
            "outlet_id": outletId,
          });
      final List<dynamic> data = response?['data'];
      final List<PayModMasterModel> payModMasterList =
          data.map((e) => PayModMasterModel.fromMap(e)).toList();
      return Right(payModMasterList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createPayModMaster(
      PayModMasterModel item) async {
    try {
      item.outletId = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createPayMode,
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
  Future<Either<Failure, Map<String, dynamic>>> deletePayModMaster(
      String payCode) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.delete,
        EndPoints.deletePayMode,
        queryParams: {
          "pay_code": payCode,
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
  Future<Either<Failure, Map<String, dynamic>>> updatePayModMaster(
      PayModMasterModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.updatePayMode,
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
}
