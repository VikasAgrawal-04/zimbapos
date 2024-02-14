import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/pay_in_model.dart';

import 'pay_in_api_repo.dart';

class PayInApiRepoImpl implements PayInApiRepo {
  @override
  Future<Either<Failure, List<PayInModel>>> fetchPayInList() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getPayin);
      final List<dynamic> data = response?['data'];
      final List<PayInModel> payInList =
          data.map((e) => PayInModel.fromMap(e)).toList();
      return Right(payInList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createPayIn(
      PayInModel item) async {
    try {
      item.outletId = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createPayIn,
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

  // @override
  // Future<Either<Failure, Map<String, dynamic>>> deleteMainGroup(
  //     String mainGroupId) async {
  //   try {
  //     final response = await Helpers.sendRequest(
  //       RequestType.delete,
  //       EndPoints.deleteMainGroup,
  //       queryParams: {
  //         "mainGroupId": mainGroupId,
  //       },
  //     );
  //     return Right(response ?? {});
  //   } on ServerException catch (error, s) {
  //     debugPrintStack(stackTrace: s);
  //     return Left(ServerFailure(message: error.message.toString()));
  //   } catch (e, s) {
  //     debugPrintStack(stackTrace: s);
  //     return Left(ServerFailure(message: e.toString()));
  //   }
  // }

  // @override
  // Future<Either<Failure, Map<String, dynamic>>> updateMainGroup(
  //     PayInModel item) async {
  //   try {
  //     final response = await Helpers.sendRequest(
  //       RequestType.post,
  //       EndPoints.updateMainGroup,
  //       queryParams: item.toMap(),
  //     );
  //     return Right(response ?? {});
  //   } on ServerException catch (error, s) {
  //     debugPrintStack(stackTrace: s);
  //     return Left(ServerFailure(message: error.message.toString()));
  //   } catch (e, s) {
  //     debugPrintStack(stackTrace: s);
  //     return Left(ServerFailure(message: e.toString()));
  //   }
  // }
}
