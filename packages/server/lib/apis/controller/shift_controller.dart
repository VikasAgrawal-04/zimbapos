import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/models/user_models/user_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class ShiftController {
  final IsarService db;
  ShiftController(this.db);

  Future<Response> getShiftId(Request request, UserModel user) async {
    try {
      final shiftId =
          await db.shiftRepository.getShiftId(userId: user.userID.toString());
      return okResponse(shiftId);
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> endShift(Request request, UserModel user) async {
    try {
      final success =
          await db.shiftRepository.endShift(userId: user.userID.toString());
      if (success) {
        return okResponse("Shift Ended");
      } else {
        return badArguments("Start Shift First!");
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> startShift(Request request, UserModel user) async {
    try {
      final success =
          await db.shiftRepository.startShift(userId: user.userID.toString());
      if (success) {
        return okResponse("Shift Started");
      } else {
        return badArguments("Something Went Wrong");
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
