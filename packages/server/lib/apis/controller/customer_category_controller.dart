import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class CustCatController {
  IsarService dbCubit;

  CustCatController(this.dbCubit);

  Future<Response> fetchCustCategory(Request request) async {
    try {
      final cusCat = await dbCubit.customerCategoryRepository.getAllCusCat();
      return okResponse(cusCat.map((e) => e.toMap()).toList());
    } catch (e) {
      return invalidResponse();
    }
  }

  Future<Response> createCustCategory(Request request) async {
    try {
      final requiredFields = ['custCategoryName', 'custCategoryDiscount'];
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
      decodedData['custCategoryId'] = Helpers.generateUuId();
      dbCubit.customerCategoryRepository.createCusCat(
          data: CustomerCategoryModel.fromJson(jsonEncode(decodedData)));
      return okResponse('Customer Category Created Successfully');
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> deleteCustCategory(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments(
            'Please Enter Customer Category Id as a key cusCatId');
      }
      final cusCatId = request.url.queryParameters['cusCatId'];
      if (cusCatId == null) {
        return badArguments(
            'Please Enter Customer Category Id as a key cusCatId');
      }
      dbCubit.customerCategoryRepository.deleteCusCat(cusCatId);
      return okResponse('Customer Category Deleted!');
    } catch (e) {
      return invalidResponse();
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
      await dbCubit.customerCategoryRepository.updateCusCat(
          data: CustomerCategoryModel.fromJson(jsonEncode(decodedData)));
      return okResponse('Customer Category Updated!');
    } catch (e) {
      return badArguments('Invalid Arguments');
    }
  }
}
