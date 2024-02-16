import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/models/global_models/screen_function_junction_model.dart';
import 'package:zimbapos/models/user_models/user_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class SFJunctionController {
  final IsarService db;
  SFJunctionController(this.db);

  Future<Response> getAllRoleScrnFn(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Outlet ID as a key outlet_id');
      }
      final outletId = request.url.queryParameters['outlet_id'];
      if (outletId == null || outletId == '') {
        return badArguments('Please Enter Outlet ID as a key outlet_id');
      }
      final screenFnList =
          await db.sfJunctionRepository.getAllRoleScrnFn(outletId);

      return okResponse(screenFnList.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> getScrnFnForRoles(Request request, UserModel user) async {
    try {
      final sfList = await db.sfJunctionRepository.getScrnFnForRoles(
          user.userRoleId.toString(), user.outletID.toString());
      return okResponse(sfList.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createScrnFnJunction(Request request) async {
    try {
      final requiredFields = ['outletId', 'roleId', 'screenFunctionId'];
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

      final success = await db.sfJunctionRepository.createScrnFnJunction(
          ScreenFunctionJunctionModel.fromMap(decodedData));

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

  Future<Response> updateScrnFnJunction(Request request) async {
    try {
      final requiredFields = [
        'screenFunctionId',
        'outletId',
        'roleId',
        'canView',
        'canChange'
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
      final success = await db.sfJunctionRepository.updateScrnFnJunction(
          ScreenFunctionJunctionModel.fromMap(decodedData));

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

  Future<Response> deleteScrnFnJunction(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments(
            'Please Enter Screen Function ID as screen_fn_id,Role ID as role_id and Outlet ID as outlet_id');
      }
      final screenFnId = request.url.queryParameters['screen_fn_id'];
      final roleId = request.url.queryParameters['role_id'];
      final outletId = request.url.queryParameters['outlet_id'];
      if (screenFnId == null ||
          screenFnId == '' ||
          roleId == null ||
          roleId == '' ||
          outletId == null ||
          outletId == '') {
        return badArguments(
            'Please Enter All Query Parameters as screen_fn_id,role_id,outlet_id');
      }
      final success = await db.sfJunctionRepository
          .deleteScrnFnJunction(screenFnId, roleId, outletId);
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
