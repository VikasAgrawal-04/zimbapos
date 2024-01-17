import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:zimbapos/repository/isar_service.dart';

class AreaController {
  IsarService dbCubit;
  AreaController(this.dbCubit);

  Future<Response> fetchAllArea(Request request) async {
    try {
      final areas = await dbCubit.areasRepository.getAreas();
      return Response.ok(jsonEncode({'data': areas}));
    } catch (e) {
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  // Future<Response> createArea(Request request) async {
  //   try {
  //     final requiredFields = ['areaName', 'outletId'];
  //     final reqData = await utf8.decodeStream(request.read());
  //     if (reqData.isEmpty) {
  //       return Response.badRequest(
  //           body: jsonEncode(
  //               {'data': 'Fields Required ${requiredFields.join(',')}'}));
  //     }
  //     final Map<String, dynamic> decodedData = jsonDecode(reqData);
  //     final missingFields =
  //         requiredFields.where((e) => decodedData[e] == null).toList();

  //     if (missingFields.isNotEmpty) {
  //       final missingFieldsMessage =
  //           'Missing fields: ${missingFields.join(', ')}';
  //       return Response.badRequest(
  //           body: jsonEncode({"data": missingFieldsMessage}));
  //     }
  //     decodedData['tableId'] = Helpers.generateUuId();
  //     dbCubit.tableRepository
  //         .createTable(data: TableModel.fromJson(jsonEncode(decodedData)));
  //     return Response.ok(jsonEncode({"data": "Table Created Successfully"}));
  //   } catch (e, s) {
  //     debugPrint(e.toString());
  //     debugPrintStack(stackTrace: s);
  //     return Response.badRequest(body: 'Invalid Arguments');
  //   }
  // }
}
