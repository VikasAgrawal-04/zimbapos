import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/repository/api_repository/main_group/main_group_api_repo.dart';

class MainGroupApiRepoImpl implements MainGroupApiRepo {
  @override
  Future<Either<Failure, List<MainGroupModel>>> fetchMainGroup() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getMainGroup);
      final List<dynamic> data = response?['data'];
      final List<MainGroupModel> mainGroup =
          data.map((e) => MainGroupModel.fromMap(e)).toList();
      return Right(mainGroup);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
