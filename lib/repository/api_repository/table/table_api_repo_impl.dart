import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo.dart';

class TableApiRepoImpl implements TableApiRepo {
  @override
  Future<Either<Failure, List<TableModel>>> getTableByArea(
      String areaId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.get, EndPoints.getTableByArea,
          queryParams: {'id': areaId});

      final List<dynamic> data = response?['data'];
      final List<TableModel> tables =
          data.map((e) => TableModel.fromJson(e)).toList();
      return Right(tables);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
