import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

abstract class MainGroupApiRepo {
  Future<Either<Failure, List<MainGroupModel>>> fetchMainGroup();
}
