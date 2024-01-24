import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo.dart';

class CategoryApiRepoImpl implements CategoryApiRepo {
  @override
  Future<Either<Failure, List<CategoryModel>>> fetchCategories() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getCategories);
      final List<dynamic> data = response?['data'];
      final List<CategoryModel> categories =
          data.map((e) => CategoryModel.fromMap(jsonDecode(e))).toList();
      return Right(categories);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
