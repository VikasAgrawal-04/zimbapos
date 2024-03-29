import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/shift_model.dart';

class ShiftRepository {
  final Isar db;
  ShiftRepository(this.db);

  Future<int> getShiftId() async {
    try {
      final currentShift =
          db.shiftModels.where(sort: Sort.desc).findFirstSync();
      if (currentShift != null) {
        return currentShift.shiftId!;
      } else {
        throw IsarError("Start Your Shift");
      }
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return 0;
    }
  }

  Future<bool> endShift({required String userId}) async {
    try {
      ShiftModel? lastShift =
          db.shiftModels.where(sort: Sort.desc).findFirstSync();
      if (lastShift != null && lastShift.shiftEnded == false) {
        lastShift.shiftEnded = true;
        lastShift.shiftEndedAt = DateTime.now();
        lastShift.userId = userId;
        db.writeTxnSync(() => db.shiftModels.putSync(lastShift));
        return true;
      } else {
        throw IsarError('Shift Not Started');
      }
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return false;
    }
  }

  Future<bool> startShift({required String userId}) async {
    try {
      ShiftModel? shift = db.shiftModels.where(sort: Sort.desc).findFirstSync();

      if (shift == null) {
        db.writeTxnSync(() => db.shiftModels.putSync(
            ShiftModel(userId: userId, shiftStartedAt: DateTime.now())));
      } else {
        if (shift.shiftEnded == true) {
          shift.shiftId = (shift.shiftId ?? 0) + 1;
          shift.shiftEnded = false;
          shift.shiftStartedAt = DateTime.now();
          shift.userId = userId;
          db.writeTxnSync(() => db.shiftModels.putSync(shift));
        }
      }
      return true;
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return false;
    }
  }

  Future<void> shiftReport() async {
    try {
      final shiftId = await getShiftId();
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
    }
  }
}
