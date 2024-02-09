import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/customer_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class CustomerController {
  IsarService db;
  CustomerController(this.db);

  Future<Response> fetchCustomer(Request request) async {
    try {
      final customers = await db.customerRepository.getAllCustomers();
      return okResponse(customers.map((e) => e.toJson()).toList());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createCustomer(Request request) async {
    try {
      final requiredFields = ["outlet_id", "customer_name", "mobile"];
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
      decodedData["customer_id"] = Helpers.generateUuId();
      if ((decodedData['mobile'] as String).length != 10) {
        return badArguments("Enter Valid Number");
      }
      final success = await db.customerRepository
          .createCustomer(CustomerModel.fromJson(decodedData));

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

  Future<Response> updateCustomer(Request request) async {
    try {
      final requiredFields = [
        "customer_id",
        "outlet_id",
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
      if ((decodedData['mobile'] as String).length != 10) {
        return badArguments("Enter Valid Number");
      }
      final success = await db.customerRepository
          .updateCustomer(data: CustomerModel.fromJson(decodedData));
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

  Future<Response> deleteCustomer(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return badArguments('Please Enter CustomerId as a key customer_id');
      }
      final customerId = request.url.queryParameters['customer_id'];
      if (customerId == null) {
        return badArguments('Please Enter CustomerId as a key customer_id');
      }
      final success = await db.customerRepository.deleteCustomer(customerId);
      if (success) {
        return okResponse('Customer Deleted Successfully');
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
