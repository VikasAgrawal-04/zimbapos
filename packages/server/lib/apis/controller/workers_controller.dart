import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class WorkerController {
  IsarService dbCubit;
  WorkerController(this.dbCubit);

  Future<Response> getWorkers(Request request) async {
    try {
      final workers = await dbCubit.workerRepository.getWokers();

      return Response.ok(
          (jsonEncode({'data': workers.map((e) => e.toMap()).toList()})));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> createWorker(Request request) async {
    try {
      final requiredFields = [
        'workerName',
        'createdByUserID',
        'outletId',
        'workerRole',
        'mobile',
        'canLoginIntoApp'
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
      if (decodedData['canLoginIntoApp']) {
        final requiredLogin = ['loginCode', 'password'];
        final missingLoginFields = requiredLogin
            .where((element) => decodedData[element] == null)
            .toList();
        if (missingLoginFields.isNotEmpty) {
          final missingLoginFieldMessage =
              'Missing fields: ${missingLoginFields.join(', ')}';

          return Response.badRequest(
              body: jsonEncode({"data": missingLoginFieldMessage}));
        }
      }
      decodedData['workerId'] = Helpers.generateUuId();
      final workerCreated = dbCubit.workerRepository
          .createWorker(model: WorkersModel.fromJson(jsonEncode(decodedData)));
      if (workerCreated) {
        return Response(200,
            body: jsonEncode({"data": "Worker Created Successfully"}));
      } else {
        return Response.badRequest(
            body:
                jsonEncode({'data': "Duplicate Mobile Number Or Login Code!"}));
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> updateWorker(Request request) async {
    try {
      final requiredFields = [
        'id',
        'workerId',
        'workerName',
        'createdByUserID',
        'outletId',
        'workerRole',
        'mobile',
        'canLoginIntoApp'
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
      if (decodedData['canLoginIntoApp']) {
        final requiredLogin = ['loginCode', 'password'];
        final missingLoginFields = requiredLogin
            .where((element) => decodedData[element] == null)
            .toList();
        if (missingLoginFields.isNotEmpty) {
          final missingLoginFieldMessage =
              'Missing fields: ${missingLoginFields.join(', ')}';

          return Response.badRequest(
              body: jsonEncode({"data": missingLoginFieldMessage}));
        }
      }

      final editSuccess = await dbCubit.workerRepository
          .editWorker(model: WorkersModel.fromJson(jsonEncode(decodedData)));
      if (editSuccess) {
        return Response(200,
            body: jsonEncode({"data": "Worker Edited Successfully!"}));
      } else {
        return Response.badRequest(
            body:
                jsonEncode({'data': "Duplicate Mobile Number Or Login Code!"}));
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> deleteWorker(Request request) async {
    try {
      if (request.url.queryParameters.isEmpty) {
        return Response.badRequest(
            body: jsonEncode(
                {"data": 'Please Enter Worker Id as a key workerId'}));
      }
      final workerId = request.url.queryParameters['workerId'];
      dbCubit.workerRepository.deleteWorker(workerId);
      return Response.ok(jsonEncode({'data': 'Worker Deleted!'}));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
