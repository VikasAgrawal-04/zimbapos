import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/repository/api_repository/area/area_api_repo.dart';

class AreaApiRepoImpl implements AreaApiRepo {
  @override
  Future<Either<Failure, List<AreasModel>>> getAreas() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getAreas);
      final List<dynamic> data = response?['data'];
      // Convert the dynamic list to a List<AreasModel>
      final List<AreasModel> areas =
          data.map((item) => AreasModel.fromJson(item)).toList();
      return Right(areas);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
