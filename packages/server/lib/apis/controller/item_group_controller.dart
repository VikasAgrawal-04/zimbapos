import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class ItemGroupController {
  IsarService dbCubit;
  ItemGroupController(this.dbCubit);

  Future<Response> fetchItemGroup(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Main Group Id as a key mainGroupId');
      }
      final mainGroupId = request.url.queryParameters['mainGroupId'];
      if (mainGroupId == null) {
        return badArguments('Please Enter Main Group Id as a key mainGroupId');
      }
      final itemGrps =
          await dbCubit.itemGroupReposiory.getItemsByMainGroupId(mainGroupId);
      return okResponse(itemGrps.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createItemGroup(Request request) async {
    try {
      final requiredFields = ['mainGroupId', 'itemGroupName'];
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
      decodedData['itemGroupId'] = Helpers.generateUuId();
      final success = await dbCubit.itemGroupReposiory
          .createItemGroup(ItemGroupModel.fromMap(decodedData));
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

  Future<Response> deleteItemGroup(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Item Group Id as a key itemGroupId');
      }
      final itemGroupId = request.url.queryParameters['itemGroupId'];
      if (itemGroupId == null) {
        return badArguments('Please Enter Item Group Id as a key itemGroupId');
      }
      final success =
          await dbCubit.itemGroupReposiory.deleteItemGroup(itemGroupId);
      if (success) {
        return okResponse('Item Group Deleted Successfully!');
      } else {
        return invalidResponse();
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> updateItemGroup(Request request) async {
    try {
      final requiredFields = [
        'id',
        'itemGroupId',
        'mainGroupId',
        'itemGroupName',
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
      final success = await dbCubit.itemGroupReposiory
          .updateItemGroup(ItemGroupModel.fromMap(decodedData));
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
