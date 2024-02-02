import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/models/global_models/terminal_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class TerminalController {
  IsarService db;
  TerminalController(this.db);

  Future<Response> getAllTerminals(Request request) async {
    try {
      final terminals = await db.terminalRepository.getAllTerminals();
      return okResponse(terminals.map((e) => e.toJson()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> getTerminalId(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments(
            'Please Enter Outlet Id as a key outletId and Device ID as a key deviceId');
      }
      final outletId = request.url.queryParameters['outletId'];
      if (outletId == null) {
        return badArguments('Please Enter Outlet Id as a key outletId');
      }
      final deviceId = request.url.queryParameters['deviceId'];
      if (deviceId == null) {
        return badArguments('Please Enter Device ID as a key deviceId');
      }

      final terminalId =
          await db.terminalRepository.getTerminalId(outletId, deviceId);
      if (terminalId == -1) {
        return badArguments('Device Not Registered');
      } else {
        return okResponse(terminalId.toString());
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createTerminal(Request request) async {
    try {
      final requiredFields = [
        'outletId',
        'terminalId',
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
      final success = await db.terminalRepository
          .createTerminal(TerminalModel.fromMap(decodedData));
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

  Future<Response> updateTerminalWithDeviceId(Request request) async {
    try {
      final requiredFields = ['outletId', 'terminalId', 'deviceId'];
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
      final success = await db.terminalRepository
          .updateTerminalWithDeviceId(TerminalModel.fromMap(decodedData));
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

  Future<Response> deleteTerminal(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments(
            'Please Enter Outlet Id as a key outletId and Terminal ID as a key terminalId');
      }
      final outletId = request.url.queryParameters['outletId'];
      if (outletId == null) {
        return badArguments('Please Enter Outlet Id as a key outletId');
      }
      final terminalId = request.url.queryParameters['terminalId'];
      if (terminalId == null) {
        return badArguments('Please Enter Terminal ID as a key terminalId');
      }
      final success = await db.terminalRepository
          .deleteTerminal(outletId, int.parse(terminalId));
      if (success) {
        return okResponse('Terminal Deleted Successfully');
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
