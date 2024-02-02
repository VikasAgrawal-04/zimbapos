import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class RateSetController {
  IsarService dbCubit;
  RateSetController(this.dbCubit);

  Future<Response> fetchAllRateSets(Request request) async {
    try {
      final rateSets = await dbCubit.rateSetsRepository.getAllRateSets();
      return okResponse(rateSets.map((e) => e.toMap()).toList());
    } catch (e) {
      return invalidResponse();
    }
  }

  Future<Response> createRateSets(Request request) async {
    try {
      final requiredFields = ['ratesetName'];
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
      decodedData['ratesetId'] = Helpers.generateUuId();

      final success = dbCubit.rateSetsRepository.createRateSet(
          model: RateSetsModel.fromJson(jsonEncode(decodedData)));
      if (success) {
        return okResponse('Rateset Created Successfully!');
      } else {
        return badArguments('Rate Set Already Exists');
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> updateRateSet(Request request) async {
    try {
      final requiredFields = ['id', 'ratesetId', 'ratesetName', 'isActive'];
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
      await dbCubit.rateSetsRepository.updateRateSet(
          model: RateSetsModel.fromJson(jsonEncode(decodedData)));
      return okResponse("Rateset Updated Successfully!");
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> deleteRateSet(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Rate Set Id as a key ratesetId');
      }
      final ratesetId = request.url.queryParameters['ratesetId'];

      if (ratesetId == null) {
        return badArguments('Please Enter Rate Set Id as a key ratesetId');
      } else {
        dbCubit.rateSetsRepository.deleteRateSetbyID(ratesetId);
      }
      return okResponse('Rate Set Deleted!');
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
