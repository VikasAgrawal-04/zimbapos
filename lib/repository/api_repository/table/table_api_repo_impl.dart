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
          data.map((e) => TableModel.fromMap(e)).toList();
      return Right(tables);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createTable(
      TableModel item) async {
    try {
      item.outletId = await Helpers.getOutletId() ?? "123123";
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createTable,
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
  Future<Either<Failure, Map<String, dynamic>>> deleteTable(
      String tableId) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.delete,
        EndPoints.deleteTable,
        queryParams: {
          "tableId": tableId,
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
  Future<Either<Failure, Map<String, dynamic>>> updateTable(
      TableModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.updateTable,
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
  Future<Either<Failure, List<TableModel>>> fetchTableList() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getTableList);
      final List<dynamic> data = response?['data'];
      final List<TableModel> tableList =
          data.map((e) => TableModel.fromMap(e)).toList();
      return Right(tableList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
