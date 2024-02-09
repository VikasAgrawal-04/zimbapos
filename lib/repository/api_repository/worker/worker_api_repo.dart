import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';

abstract class WorkerApiRepo {
  Future<Either<Failure, List<WorkersModel>>> getWorkers();
  Future<Either<Failure, String>> createWorker({required WorkersModel model});
  Future<Either<Failure, List<WorkersModel>>> getWaiters();
}
