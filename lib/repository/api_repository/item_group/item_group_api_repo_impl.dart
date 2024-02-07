import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/repository/api_repository/item_group/item_group_api_repo.dart';

class ItemGroupApiRepoImpl implements ItemGroupApiRepo {
  @override
  Future<Either<Failure, List<ItemGroupModel>>> fetchItemGroup(
      String id) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.get, EndPoints.getItemGroup,
          queryParams: {"mainGroupId": id});
      final List<dynamic> data = response?['data'];

      final List<ItemGroupModel> itemGrp =
          data.map((e) => ItemGroupModel.fromMap(e)).toList();
      return Right(itemGrp);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createItemGroup(
      ItemGroupModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.createItemGroup,
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
  Future<Either<Failure, Map<String, dynamic>>> deleteItemGroup(
      String itemGroupId) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.delete, EndPoints.deleteCustomerCategory,
          queryParams: {
            "itemGroupId": itemGroupId,
          });
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
  Future<Either<Failure, Map<String, dynamic>>> updateItemGroup(
      ItemGroupModel item) async {
    try {
      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.updateItemGroup,
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
  Future<Either<Failure, List<ItemGroupModel>>> getItemGroupList() async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.get, EndPoints.getItemGroupList);
      final List<dynamic> data = response?['data'];
      final List<ItemGroupModel> itemGroupList =
          data.map((item) => ItemGroupModel.fromMap(item)).toList();
      return Right(itemGroupList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
