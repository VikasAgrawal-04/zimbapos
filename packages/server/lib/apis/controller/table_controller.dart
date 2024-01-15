import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class TableController {
  IsarService dbCubit;
  TableController(this.dbCubit);

  Future<Response> fetchAllTables(Request request) async {
    try {
      final tables = await dbCubit.tableRepository.getAllTables();
      return Response.ok(jsonEncode({'data': tables}));
    } catch (e) {
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> createTable(Request request) async {
    try {
      final requiredFields = ['tableName', 'outletId'];
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
      decodedData['tableId'] = Helpers.generateUuId();
      dbCubit.tableRepository
          .createTable(data: TableModel.fromJson(jsonEncode(decodedData)));
      return Response.ok(jsonEncode({"data": "Table Created Successfully"}));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }
}
