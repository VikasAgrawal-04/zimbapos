import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';

import '../../../models/global_models/pay_out_model.dart';
import 'pay_out_api_repo.dart';

class PayOutApiRepoImpl implements PayOutApiRepo {
  @override
  Future<Either<Failure, List<PayOutModel>>> fetchPayOutList() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getPayout);
      final List<dynamic> data = response?['data'];
      final List<PayOutModel> payOutList =
          data.map((e) => PayOutModel.fromMap(e)).toList();
      return Right(payOutList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createPayOut(
      PayOutModel item) async {
    try {
      item.outletId = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createPayOut,
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
  //     PayOutModel item) async {
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
