import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';

class WorkerRepository {
  final Isar db;

  WorkerRepository(this.db);

  Stream<List<WorkersModel>> streamWorkersList() {
    return db.workersModels
        .filter()
        .isDeletedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Future<List<WorkersModel>> getWokers() async {
    return db.workersModels.filter().isDeletedEqualTo(false).findAll();
  }

  createWorker({required WorkersModel model}) {
    try {
      final existingWorkerByMobile =
          db.workersModels.filter().mobileEqualTo(model.mobile).findFirstSync();
      final existingWorkerByLoginCode = model.loginCode != null
          ? db.workersModels
              .filter()
              .loginCodeEqualTo(model.loginCode)
              .findFirstSync()
          : null;

      if (existingWorkerByMobile != null || existingWorkerByLoginCode != null) {
        throw IsarError("Duplicate Values Found!"); // Duplicate exists
      }
      db.writeTxnSync(() => db.workersModels.putSync(model));
      return true;
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }

  editWorker({required WorkersModel model}) async {
    try {
      WorkersModel? dbItem = await db.workersModels
          .filter()
          .workerIdEqualTo(model.workerId)
          .and()
          .isDeletedEqualTo(false)
          .findFirst();
      if (dbItem != null) {
        if (model.mobile != dbItem.mobile ||
            model.loginCode != dbItem.loginCode) {
          final existingWorkerByMobile = db.workersModels
              .filter()
              .mobileEqualTo(model.mobile)
              .and()
              .isDeletedEqualTo(false)
              .findFirstSync();
          final existingWorkerByLoginCode = model.loginCode != null
              ? db.workersModels
                  .filter()
                  .loginCodeEqualTo(model.loginCode)
                  .and()
                  .isDeletedEqualTo(false)
                  .findFirstSync()
              : null;

          if ((model.mobile != dbItem.mobile &&
                  existingWorkerByMobile != null) ||
              (model.loginCode != dbItem.loginCode &&
                  existingWorkerByLoginCode != null)) {
            throw IsarError("Duplicate Values Found!"); // Duplicate exists
          }
        }
        dbItem = model;
        db.writeTxnSync(() => db.workersModels.putSync(dbItem!));
      }
      return true;
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }

  Future deleteWorker(String? id) async {
    try {
      final model =
          await db.workersModels.filter().workerIdEqualTo(id).findFirst();
      if (model != null) {
        model.isDeleted = true;
        db.writeTxnSync(() => db.workersModels.putSync(model));
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }

  changeActive(int id, bool isActive) async {
    WorkersModel? model = await db.workersModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.workersModels.putSync(model);
      });
    }
  }
}
