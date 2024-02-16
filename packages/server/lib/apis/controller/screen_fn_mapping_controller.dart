import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class SFMappingController {
  IsarService db;
  SFMappingController(this.db);

  Future<Response> fetchAllSFMapping(Request request) async {
    try {
      final mappings = await db.sfMappingRepository.fetchAllSFMapping();
      return okResponse(mappings.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createSFMapping(Request request) async {
    try {
      final requiredFields = ['data'];
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
      final List<SFMappingModel> list = (decodedData['data'] as List)
          .map((e) => SFMappingModel.fromMap(e))
          .toList();

      await db.sfMappingRepository.createSFMapping(list);
      return okResponse("SFMapping Created Successfully");
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
