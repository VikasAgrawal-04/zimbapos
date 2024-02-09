import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/models/global_models/temp_bill_header_model.dart';
import 'package:zimbapos/models/global_models/temp_bill_lines_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class BillController {
  final IsarService db;
  BillController(this.db);

  Future<Response> getBillDetails(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Table Id as a key tableId');
      }
      final tableId = request.url.queryParameters['tableId'];
      if (tableId == null) {
        return badArguments('Please Enter Table Id as a key tableId');
      } else {
        final success = await db.billRepository.getTempBill(tableId: tableId);
        if (success.value1 == null) {
          return okResponse({"bill_header": null, "bill_lines": []});
        } else {
          return okResponse({
            "bill_header": success.value1?.toMap(),
            "bill_lines": success.value2.map((e) => e.toMap()).toList()
          });
        }
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createOrUpdateBill(Request request) async {
    try {
      final decodedData = await utf8
          .decodeStream(request.read())
          .then((value) => jsonDecode(value));

      if (decodedData['bill_header'] == null ||
          decodedData['bill_header'] == {} ||
          (decodedData['bill_lines'] as List).isEmpty) {
        return badArguments("Enter Bill Details as bill_header and bill_lines");
      }
      final header = TempBillHeaderModel.fromMap(decodedData['bill_header']);
      final lines = (decodedData['bill_lines'] as List<dynamic>)
          .map((e) => TempBillLines.fromMap(e))
          .toList();
      final success = await db.billRepository
          .createOrUpdateTempBill(header: header, lines: lines);
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

  Future<Response> deleteItemFromKot(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments(
            'Please Enter Table Id as a key table_id and Item Id as item_id');
      }
      final tableId = request.url.queryParameters['table_id'];
      final itemId = request.url.queryParameters['item_id'];
      if (tableId == null) {
        return badArguments('Please Enter Table Id as a key table_id');
      } else if (itemId == null) {
        return badArguments('Please Enter Item Id as a key item_id');
      } else {
        final success = await db.billRepository
            .deleteTempBillLine(tableId: tableId, itemId: itemId);
        if (success.value1) {
          return okResponse(success.value2);
        } else {
          return badArguments(success.value2);
        }
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createPermanentBill(Request request) async {
    try {
      final decodedData = await utf8
          .decodeStream(request.read())
          .then((value) => jsonDecode(value));
      final tableId = decodedData['table_id'];
      if (tableId == null) {
        return badArguments("Please Enter TableId as table_id");
      }
      final success = await db.billRepository
          .createPermanentBill(tableId: decodedData['table_id']);
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
