import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';

abstract class RateSetApiRepo {
  Future<Either<Failure, List<RateSetsModel>>> fetchRateSetList();
  Future<Either<Failure, Map<String, dynamic>>> createRateSet(
      RateSetsModel item);
  Future<Either<Failure, Map<String, dynamic>>> updateRateSet(
      RateSetsModel item);
  Future<Either<Failure, Map<String, dynamic>>> deleteRateSet(String rateSetId);
}
