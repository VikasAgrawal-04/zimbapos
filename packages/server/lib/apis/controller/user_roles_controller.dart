import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class UserRoleController {
  final IsarService db;
  UserRoleController(this.db);

  Future<Response> fetchAllRoles(Request request) async {
    try {
      final roles = await db.userRoleRepository.getAllUserRoles();
      return okResponse(roles.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createRole(Request request) async {
    try {
      final requiredFields = ['roleName', 'outletId'];
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
      decodedData['roleId'] = Helpers.generateUuId();

      final success = await db.userRoleRepository
          .createUserRole(UserRolesModel.fromMap(decodedData));

      if (success.value1) {
        return okResponse(success.value2.value2!.toMap());
      } else {
        return badArguments(success.value2.value1);
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> updateRole(Request request) async {
    try {
      final requiredFields = ['id', 'roleId', 'roleName', 'outletId'];
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

      final success = await db.userRoleRepository
          .updateUserRole(UserRolesModel.fromMap(decodedData));

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

  Future<Response> deleteUserRole(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Role Id as a key role_id');
      }
      final roleId = request.url.queryParameters['role_id'];
      if (roleId == null) {
        return badArguments('Please Enter Role Id as a key role_id');
      }

      final success = await db.userRoleRepository.deleteUserRole(roleId);
      if (success) {
        return okResponse('User Role Deleted Successfully');
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
