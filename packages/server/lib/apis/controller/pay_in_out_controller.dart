import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/pay_in_model.dart';
import 'package:zimbapos/models/global_models/pay_out_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class PayInOutController {
  IsarService db;
  PayInOutController(this.db);

  Future<Response> getPayIn(Request request) async {
    try {
      final payIns = await db.payInOutRepository.getPayIn();
      return okResponse(payIns.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> getPayOut(Request request) async {
    try {
      final payIns = await db.payInOutRepository.getPayOut();
      return okResponse(payIns.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createPayIn(Request request) async {
    try {
      final requiredFields = ['outletId', 'amount', 'reason'];
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
      decodedData['payInId'] = Helpers.generateUuId();
      final success = await db.payInOutRepository
          .createPayIn(PayInModel.fromMap(decodedData));
      if (success) {
        return okResponse('Pay In Created');
      } else {
        return badArguments('Something Went Wrong!');
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createPayOut(Request request) async {
    try {
      final requiredFields = ['outletId', 'amount', 'reason'];
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
      decodedData['paytoutId'] = Helpers.generateUuId();
      final success = await db.payInOutRepository
          .createPayOut(PayOutModel.fromMap(decodedData));
      if (success) {
        return okResponse('Pay Out Created');
      } else {
        return badArguments('Something Went Wrong!');
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
