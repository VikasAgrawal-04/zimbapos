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

  Future<Response> createOrUpdateBill(Request request) async {
    try {
      final decodedData = await utf8
          .decodeStream(request.read())
          .then((value) => jsonDecode(value));

      final header = TempBillHeaderModel.fromMap(decodedData['bill_header']);
      final lines = (decodedData['bill_lines'] as List<dynamic>)
          .map((e) => TempBillLines.fromMap(e))
          .toList();
      final success = await db.billRepository
          .createOrUpdateBill(header: header, lines: lines);
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
