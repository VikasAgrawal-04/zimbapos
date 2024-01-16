import 'dart:convert';

import 'package:flutter/material.dart';
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
      return Response.ok(jsonEncode({'data': rateSets}));
    } catch (e) {
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> createRateSets(Request request) async {
    try {
      final requiredFields = ['ratesetName'];
      final reqData = await utf8.decodeStream(request.read());
      if (reqData.isEmpty) {
        return Response.badRequest(
            body: jsonEncode(
                {'data': 'Fields Required ${requiredFields.join(',')}'}));
      }
      final Map<String, dynamic> decodedData = jsonDecode(reqData);
      final missingFields =
          requiredFields.where((e) => decodedData[e] == null).toList();

      if (missingFields.isNotEmpty) {
        final missingFieldsMessage =
            'Missing fields: ${missingFields.join(', ')}';
        return Response.badRequest(
            body: jsonEncode({"data": missingFieldsMessage}));
      }
      decodedData['ratesetId'] = Helpers.generateUuId();
      dbCubit.rateSetsRepository.createRateSet(
          model: RateSetsModel.fromJson(jsonEncode(decodedData)));
      return Response.ok(jsonEncode({'data': 'Rateset Created Successfully!'}));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> updateRateSet(Request request) async {
    try {
      final requiredFields = ['id', 'ratesetId', 'ratesetName', 'isActive'];
      final reqData = await utf8.decodeStream(request.read());
      if (reqData.isEmpty) {
        return Response.badRequest(
            body: jsonEncode(
                {'data': 'Fields Required ${requiredFields.join(',')}'}));
      }
      final Map<String, dynamic> decodedData = jsonDecode(reqData);
      final missingFields =
          requiredFields.where((e) => decodedData[e] == null).toList();

      if (missingFields.isNotEmpty) {
        final missingFieldsMessage =
            'Missing fields: ${missingFields.join(', ')}';
        return Response.badRequest(
            body: jsonEncode({"data": missingFieldsMessage}));
      }
      await dbCubit.rateSetsRepository.updateRateSet(
          model: RateSetsModel.fromJson(jsonEncode(decodedData)));

      return Response.ok(jsonEncode({"data": "Rateset Updated Successfully!"}));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> deleteRateSet(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return Response.badRequest(
            body: jsonEncode(
                {"data": 'Please Enter Rate Set Id as a key ratesetId'}));
      }
      final ratesetId = request.url.queryParameters['ratesetId'];
      dbCubit.rateSetsRepository.deleteRateSetbyID(ratesetId);
      return Response.ok(jsonEncode({'data': 'Rate Set Deleted!'}));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }
}
