import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/repository/api_repository/worker/worker_api_repo_impl.dart';

class WorkerApiRepoImpl implements WorkerApiRepo {
  @override
  Future<Either<Failure, List<WorkersModel>>> getWorkers() async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.get,
        EndPoints.getWorkers,
      );
      final List<dynamic> data = response?['data'];
      final List<WorkersModel> workers =
          data.map((e) => WorkersModel.fromJson(e)).toList();
      return Right(workers);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> createWorker({
    required WorkersModel model,
  }) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createWorker,
        data: model.toJson(),
      );
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
