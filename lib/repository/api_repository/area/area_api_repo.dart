import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

abstract class AreaApiRepo {
  Future<Either<Failure, List<AreasModel>>> getAreas();
}


