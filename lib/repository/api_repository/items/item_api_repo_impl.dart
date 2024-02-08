import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/response_models/item_response_model.dart';
import 'package:zimbapos/repository/api_repository/items/item_api_repo.dart';

class ItemApiRepoImpl implements ItemApiRepo {
  @override
  Future<Either<Failure, ItemApiResponseModel>> getAllItems() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getAllItems);
      return Right(ItemApiResponseModel.fromJson(response ?? {}));
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ItemApiResponseModel>> getAllItemsById(
      String id) async {
    try {
      final response = await Helpers.sendRequest(
          RequestType.get, EndPoints.getItemsByGroupId,
          queryParams: {"itemGroupId": id});
      return Right(ItemApiResponseModel.fromJson(response ?? {}));
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}