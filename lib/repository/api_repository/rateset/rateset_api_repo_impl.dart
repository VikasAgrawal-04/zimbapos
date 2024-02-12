import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';

import 'rateset_api_repo.dart';

class RateSetApiRepoImpl implements RateSetApiRepo {
  @override
  Future<Either<Failure, List<RateSetsModel>>> fetchRateSetList() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getRateSetList);
      final List<dynamic> data = response?['data'];
      final List<RateSetsModel> rateSetList =
          data.map((e) => RateSetsModel.fromMap(e)).toList();
      return Right(rateSetList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createRateSet(
      RateSetsModel item) async {
    try {
      item.outletId = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createRateSet,
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
  Future<Either<Failure, Map<String, dynamic>>> deleteRateSet(
      String rateSetId) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.delete,
        EndPoints.deleteRateSet,
        queryParams: {
          "ratesetId": rateSetId,
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
  Future<Either<Failure, Map<String, dynamic>>> updateRateSet(
      RateSetsModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.updateRateSet,
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
