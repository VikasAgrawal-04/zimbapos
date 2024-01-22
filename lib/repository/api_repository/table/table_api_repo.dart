import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

abstract class TableApiRepo {
  Future<Either<Failure, List<TableModel>>> getTableByArea(String areaId);
}
