import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';

class SFMappingRepository {
  final Isar db;
  SFMappingRepository(this.db);

  Future<List<SFMappingModel>> fetchAllSFMapping() async {
    try {
      return db.sFMappingModels.where().findAllSync();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<void> createSFMapping(List<SFMappingModel> data) async {
    try {
      for (final map in data) {
        final existingMap = db.sFMappingModels
            .filter()
            .scrnFnIdEqualTo(map.scrnFnId)
            .findFirstSync();
        if (existingMap == null) {
          db.writeTxnSync(() => db.sFMappingModels.putSync(map));
        }
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
    }
  }
}
