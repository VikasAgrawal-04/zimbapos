import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class AreaController {
  IsarService dbCubit;
  AreaController(this.dbCubit);

  Future<Response> fetchAllArea(Request request) async {
    try {
      final areas = await dbCubit.areasRepository.getAreas();
      return okResponse(areas.map((e) => e.toMap()).toList());
    } catch (e) {
      return invalidResponse();
    }
  }

  Future<Response> createArea(Request request) async {
    try {
      final requiredFields = ['areaName', 'rateSetId', 'extraChargePercent'];
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
      decodedData['areaId'] = Helpers.generateUuId();
      final success = await dbCubit.areasRepository
          .createArea(model: AreasModel.fromMap(decodedData));
      if (success) {
        return okResponse("Area Created Successfully");
      } else {
        return badArguments("Area Already Exists");
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> deleteArea(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Area Id as a key areaId');
      }
      final areaId = request.url.queryParameters['areaId'];
      if (areaId == null) {
        return badArguments('Please Enter Area Id as a key areaId');
      } else {
        final success = await dbCubit.areasRepository.deleteArea(areaId);
        if (success) {
          return okResponse('Area Deleted Successfully');
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

  Future<Response> updateArea(Request request) async {
    try {
      final requiredFields = [
        'id',
        'areaId',
        'areaName',
        'rateSetId',
        'extraChargePercent',
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
      final success = await dbCubit.areasRepository
          .updateAreaApi(AreasModel.fromJson(jsonEncode(decodedData)));
      if (success) {
        return okResponse('result');
      } else {
        return badArguments('Duplicate Area Name');
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
