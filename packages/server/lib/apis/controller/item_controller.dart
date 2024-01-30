import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/items_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class ItemController {
  IsarService dbCubit;
  ItemController(this.dbCubit);

  Future<Response> fetchAllItems(Request request) async {
    try {
      final items = await dbCubit.itemsRepository.getItems();
      return okResponse(items);
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> fetchItemsByGroupId(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Item Group Id as a key itemGroupId');
      }
      final itemGroupId = request.url.queryParameters['itemGroupId'];
      if (itemGroupId == null) {
        return badArguments('Please Enter Item Group Id as a key itemGroupId');
      }
      final itemsByGrp =
          await dbCubit.itemsRepository.getItemsByGroupId(itemGroupId);

      return okResponse(itemsByGrp);
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createItem(Request request) async {
    try {
      final requiredFields = [
        'itemName',
        'itemGroupId',
        'foodType',
        'itemRate',
        'taxId'
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
      decodedData['itemId'] = Helpers.generateUuId();
      final success = await dbCubit.itemsRepository
          .createItemApi(ItemsModel.fromMap(decodedData));

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

  Future<Response> deleteItem(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Item Group Id as a key itemGroupId');
      }
      final itemGroupId = request.url.queryParameters['itemGroupId'];
      if (itemGroupId == null) {
        return badArguments('Please Enter Item Group Id as a key itemGroupId');
      }

      final success = await dbCubit.itemsRepository.deleteItemApi(itemGroupId);
      if (success) {
        return okResponse('Item Deleted Successfully');
      } else {
        return invalidResponse();
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> updateItem(Request request) async {
    try {
      final requiredFields = [
        'id',
        'itemId',
        'itemName',
        'itemGroupId',
        'foodType',
        'itemRate',
        'taxId'
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
      final success = await dbCubit.itemsRepository
          .updateItem(ItemsModel.fromMap(decodedData));
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
