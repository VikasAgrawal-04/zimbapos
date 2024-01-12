import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/repository/isar_service.dart';

class RateSetController {
  IsarService dbCubit;
  RateSetController(this.dbCubit);

  Future<Response> fetchAllRateSets(Request request) async {
    try {
      final rateSets = await dbCubit.rateSetsRepository.getAllRateSets();
      return Response.ok(jsonEncode({'data': rateSets}));
    } catch (e) {
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }

  Future<Response> createRateSets(Request request) async {
    try {
      return Response.ok('body');
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return Response.badRequest(body: 'Invalid Arguments');
    }
  }
}
