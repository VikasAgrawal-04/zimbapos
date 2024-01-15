import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
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

  Future<Response> createCustCategory(Request request) async {
    try {
      final requiredFields = ['custCategoryName', 'custCategoryDiscount'];
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
      decodedData['custCategoryId'] = Helpers.generateUuId();
      dbCubit.customerRepository.createCusCat(
          data: CustomerCategoryModel.fromJson(jsonEncode(decodedData)));
      return Response.ok(
          jsonEncode({'data': 'Customer Category Created Successfully'}));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> deleteCustCategory(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return Response.badRequest(
            body: jsonEncode({
          "data": 'Please Enter Customer Category Id as a key cusCatId'
        }));
      }
      final cusCatId = request.url.queryParameters['cusCatId'];
      dbCubit.customerRepository.deleteCusCat(cusCatId.toString());
      return Response.ok(jsonEncode({'data': 'Customer Category Deleted!'}));
    } catch (e) {
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> updateCustCategory(Request request) async {
    try {
      final requiredFields = [
        'id',
        'custCategoryId',
        'custCategoryName',
        'custCategoryDiscount',
        'isActive'
      ];
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
      await dbCubit.customerRepository.updateCusCat(
          data: CustomerCategoryModel.fromJson(jsonEncode(decodedData)));
      return Response.ok(jsonEncode({'data': 'Customer Category Updated!'}));
    } catch (e) {
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }
}
