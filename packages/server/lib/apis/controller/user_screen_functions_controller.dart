import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/user_role_screen_function_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class UserScreenController {
  final IsarService db;
  UserScreenController(this.db);

  Future<Response> fetchAllScreenFunction(Request request) async {
    try {
      final screenFnList =
          await db.userRoleScreenRepository.getAllScreenFunctions();

      return okResponse(screenFnList.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createScreenFn(Request request) async {
    try {
      final requiredFields = ['outletId', 'roleId', 'screenFunctionName'];
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
      decodedData['screenFunctionId'] = Helpers.generateUuId();

      final success = await db.userRoleScreenRepository
          .createUserScreenFunctions(
              UserRoleScreenFunctionModel.fromMap(decodedData));

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

  Future<Response> updateScreenFn(Request request) async {
    try {
      final requiredFields = [
        'id',
        'screenFunctionId',
        'outletId',
        'roleId',
        'screenFunctionName'
      ];
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
      final success = await db.userRoleScreenRepository
          .updateUserScreenFunctions(
              UserRoleScreenFunctionModel.fromMap(decodedData));

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

  Future<Response> deleteScreenFn(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments(
            'Please Enter Screen Function ID as a key screen_fn_id');
      }
      final screenFnId = request.url.queryParameters['screen_fn_id'];
      if (screenFnId == null || screenFnId == '') {
        return badArguments(
            'Please Enter Screen Function ID as a key screen_fn_id');
      }
      final success =
          await db.userRoleScreenRepository.deleteScreenFunction(screenFnId);
      if (success) {
        return okResponse('Screen Function Deleted Successfully');
      } else {
        return invalidResponse();
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
