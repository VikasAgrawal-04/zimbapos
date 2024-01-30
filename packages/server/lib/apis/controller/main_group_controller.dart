import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class MainGroupController {
  IsarService dbCubit;
  MainGroupController(this.dbCubit);

  Future<Response> fetchMainGroups(Request request) async {
    try {
      final mainGrps = await dbCubit.mainGroupRepository.getMainGroups();
      return okResponse(mainGrps);
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createMainGroup(Request request) async {
    try {
      final requiredFields = ['categoryId', 'mainGroupName'];
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
      decodedData['mainGroupId'] = Helpers.generateUuId();
      final success = await dbCubit.mainGroupRepository
          .createMainGroup(MainGroupModel.fromMap(decodedData));
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

  Future<Response> deleteMainGroup(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Main Group Id as a key mainGroupId');
      }
      final mainGroupId = request.url.queryParameters['mainGroupId'];
      if (mainGroupId == null) {
        return badArguments('Please Enter Main Group Id as a key mainGroupId');
      }
      final success =
          await dbCubit.mainGroupRepository.deleteMainGroup(mainGroupId);
      if (success) {
        return okResponse('Main Group Deleted Successfully!');
      } else {
        return invalidResponse();
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> updateMainGroup(Request request) async {
    try {
      final requiredFields = [
        'id',
        'categoryId',
        'mainGroupId',
        'mainGroupName',
        'isActive'
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
      final success = await dbCubit.mainGroupRepository
          .updateMainGroup(MainGroupModel.fromMap(decodedData));
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
