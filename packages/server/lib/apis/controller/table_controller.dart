import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
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
      return okResponse(tables.map((e) => e.toMap()).toList());
    } catch (e) {
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> createTable(Request request) async {
    try {
      final requiredFields = ['tableName', 'outletId', 'areaId'];
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
      final success = await dbCubit.tableRepository
          .createTable(data: TableModel.fromJson(jsonEncode(decodedData)));
      if (success) {
        return okResponse("Table Created Successfully");
      } else {
        return badArguments('Table Already Exists');
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> updateTable(Request request) async {
    try {
      final requiredFields = ['id', 'tableId', 'tableName', 'isActive'];
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
      await dbCubit.tableRepository
          .updateTable(data: TableModel.fromJson(jsonEncode(decodedData)));

      return Response.ok(jsonEncode({"data": "Table Updated Successfully!"}));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> deleteTable(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Table Id as a key tableId');
      }
      final tableId = request.url.queryParameters['id'];
      dbCubit.tableRepository.deleteTable(int.parse(tableId.toString()));
      return Response.ok(jsonEncode({'data': 'Table Deleted!'}));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> fetchTableById(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Area Id as a key id');
      }
      final id = request.url.queryParameters['id'];
      if (id == null) {
        return badArguments('Please Enter Table Id as a key id');
      }
      final tables = await dbCubit.tableRepository.fetchTableById(id);
      return okResponse(tables.map((e) => e.toMap()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
