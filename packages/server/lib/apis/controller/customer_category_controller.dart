import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:zimbapos/repository/isar_service.dart';

class CustCatController {
  IsarService dbCubit;

  CustCatController(this.dbCubit);

  Future<Response> fetchCustCategory(Request request) async {
    try {
      final cusCat = await dbCubit.customerRepository.getAllCusCat();
      return Response.ok(jsonEncode({'data': cusCat}));
    } catch (e) {
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }
}
