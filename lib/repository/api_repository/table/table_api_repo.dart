import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

abstract class TableApiRepo {
  Future<Either<Failure, List<TableModel>>> getTableByArea(String areaId);
  Future<Either<Failure, List<TableModel>>> fetchTableList();
  Future<Either<Failure, Map<String, dynamic>>> createTable(
    TableModel item,
  );
  Future<Either<Failure, Map<String, dynamic>>> updateTable(
    TableModel item,
  );
  Future<Either<Failure, Map<String, dynamic>>> deleteTable(
    String tableId,
  );
}
