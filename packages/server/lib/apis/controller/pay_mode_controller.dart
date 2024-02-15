import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/pay_mod_master_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class PayModeController {
  final IsarService db;
  PayModeController(this.db);

  Future<Response> fetchAllPayModes(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Outlet Id as a key outlet_id');
      }
      final outletId = request.url.queryParameters['outlet_id'];
      if (outletId == null || outletId == '') {
        return badArguments('Please Enter Outlet Id as a key outlet_id');
      }
      final payModes = await db.payModeRepository.fetchAllPayModes(outletId);
      return okResponse(payModes.map((e) => e.toMap()).toList());
    } catch (error, stack) {
      debugPrint(error.toString());
      debugPrintStack(stackTrace: stack);
      return invalidResponse();
    }
  }

  Future<Response> createPayMode(Request request) async {
    try {
      final requiredFields = ['outletId', 'payTypeName'];
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
      decodedData['payCode'] = Helpers.getPayCode();
      final success = await db.payModeRepository
          .createPayMode(PayModMasterModel.fromMap(decodedData));
      if (success.value1) {
        return okResponse(success.value2);
      } else {
        return badArguments(success.value2);
      }
    } catch (error, stack) {
      debugPrint(error.toString());
      debugPrintStack(stackTrace: stack);
      return invalidResponse();
    }
  }

  Future<Response> updatePayMode(Request request) async {
    try {
      final requiredFields = ['outletId', 'payCode', 'payTypeName', 'isActive'];
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
      final success = await db.payModeRepository
          .updatePayMode(PayModMasterModel.fromMap(decodedData));
      if (success.value1) {
        return okResponse(success.value2);
      } else {
        return badArguments(success.value2);
      }
    } catch (error, stack) {
      debugPrint(error.toString());
      debugPrintStack(stackTrace: stack);
      return invalidResponse();
    }
  }

  Future<Response> deletePayMode(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter PayCode Id as a key pay_code');
      }
      final payCode = request.url.queryParameters['pay_code'];
      if (payCode == null || payCode == '') {
        return badArguments('Please Enter PayCode Id as a key pay_code');
      }
      final success = await db.payModeRepository.deletePayMode(payCode);
      if (success) {
        return okResponse("Pay Mode Deleted");
      } else {
        return badArguments('Pay Mode Not Found');
      }
    } catch (error, stack) {
      debugPrint(error.toString());
      debugPrintStack(stackTrace: stack);
      return invalidResponse();
    }
  }
}
