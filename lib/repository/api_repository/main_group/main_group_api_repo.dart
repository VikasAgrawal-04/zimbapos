import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

abstract class MainGroupApiRepo {
  Future<Either<Failure, List<MainGroupModel>>> fetchMainGroup();
  Future<Either<Failure, Map<String, dynamic>>> createMainGroup(
    MainGroupModel item,
  );
  Future<Either<Failure, Map<String, dynamic>>> updateMainGroup(
    MainGroupModel item,
  );
  Future<Either<Failure, Map<String, dynamic>>> deleteMainGroup(
    String mainGroupId,
  );
}
