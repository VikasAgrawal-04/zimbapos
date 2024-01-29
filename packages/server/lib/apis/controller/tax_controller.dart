import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class TaxController {
  IsarService dbCubit;
  TaxController(this.dbCubit);

  Future<Response> fetchAllTax(Request request) async {
    try {
      final taxes = await dbCubit.taxesRepository.getTaxList();
      return okResponse(taxes);
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createTax(Request request) async {
    try {
      final requiredFields = [
        'taxName',
        'taxType',
        'taxPercent',
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

      decodedData['taxId'] = Helpers.generateUuId();
      final success = await dbCubit.taxesRepository
          .createTaxApi(TaxModel.fromMap(decodedData));

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

  Future<Response> updateTax(Request request) async {
    try {
      final requiredFields = [
        'id',
        'taxId',
        'taxName',
        'taxType',
        'taxPercent',
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
      final success = await dbCubit.taxesRepository
          .updateTax(TaxModel.fromMap(decodedData));

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

  Future<Response> deleteTax(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter Tax Id as a key taxId');
      }
      final taxId = request.url.queryParameters['taxId'];
      if (taxId == null) {
        return badArguments('Please Enter Tax Id as a key taxId');
      }
      final success = await dbCubit.taxesRepository.deleteTaxApi(taxId);
      if (success) {
        return okResponse('Tax Deleted Successfully');
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
