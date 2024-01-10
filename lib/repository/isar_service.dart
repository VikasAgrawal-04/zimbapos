import 'dart:io';

import 'package:isar/isar.dart';
import 'package:zimbapos/constants/contants.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/repository/rate_sets_repository.dart';
import 'package:zimbapos/repository/table_repository.dart';

class IsarService {
  late Isar db;
  IsarService(Directory directory) {
    db = openDB(directory);
  }
  //Checks for db is present or not
  Isar openDB(Directory directory) {
    if (!Isar.instanceNames.contains(dbName)) {
      db = Isar.openSync(
        [RateSetsModelSchema, TableModelSchema],
        name: dbName,
        directory: directory.path,
        inspector: true,
      );
      return db;
    }
    db = Isar.getInstance(dbName)!;
    return db;
  }

  closeDB() async {
    final isar = db;
    isar.close();
  }

  //Gettters

  RateSetsRepository get rateSetsRepository => RateSetsRepository(db);

  TableRepository get tableRepository => TableRepository(db);
}
