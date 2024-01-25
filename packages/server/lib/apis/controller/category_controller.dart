import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class CategoryController {
  IsarService dbCubit;
  CategoryController(this.dbCubit);

  Future<Response> fetchAllCategory(Request request) async {
    try {
      final categories = await dbCubit.categoryRepository.getAllCategory();
      return okResponse(categories);
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createCategory(Request request) async {
    try {
      final requiredFields = ['categoryName'];
      final reqData = await utf8.decodeStream(request.read());
      if (reqData.isEmpty) {
        return badArguments('Fields Required ${requiredFields.join(',')}');
      }
      final Map<String, dynamic> decodedData = jsonDecode(reqData);
      final missingFields =
          requiredFields.where((e) => decodedData[e] == null).toList();

      if (missingFields.isNotEmpty) {
        final missingFieldsMessage =
            'Missing fields: ${missingFields.join(', ')}';
        return badArguments(missingFieldsMessage);
      }
      decodedData['categoryid'] = Helpers.generateUuId();
      final success = await dbCubit.categoryRepository
          .createCategoryApi(CategoryModel.fromMap(decodedData));
      if (success.value1) {
        return okResponse(success.value2);
      } else {
        return badArguments(success.value2);
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> deleteCategory(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Category Id as a key categoryid');
      }
      final categoryid = request.url.queryParameters['categoryid'];
      if (categoryid == null) {
        return badArguments('Please Enter Category Id as a key categoryid');
      } else {
        final success =
            await dbCubit.categoryRepository.deleteCategoryApi(categoryid);
        if (success) {
          return okResponse('Category Deleted Successfully!');
        } else {
          return invalidResponse();
        }
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> updateCategory(Request request) async {
    try {
      final requiredFields = ['id', 'categoryid', 'categoryName', 'isActive'];
      final reqData = await utf8.decodeStream(request.read());
      if (reqData.isEmpty) {
        return badArguments('Fields Required ${requiredFields.join(',')}');
      }
      final Map<String, dynamic> decodedData = jsonDecode(reqData);
      final missingFields =
          requiredFields.where((e) => decodedData[e] == null).toList();

      if (missingFields.isNotEmpty) {
        final missingFieldsMessage =
            'Missing fields: ${missingFields.join(', ')}';
        return badArguments(missingFieldsMessage);
      }
      final success = await dbCubit.categoryRepository
          .updateCategoryApi(CategoryModel.fromMap(decodedData));
      if (success.value1) {
        return okResponse(success.value2);
      } else {
        return badArguments(success.value2);
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
