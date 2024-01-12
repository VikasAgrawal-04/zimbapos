import 'dart:io';

import 'package:isar/isar.dart';
import 'package:zimbapos/constants/contants.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/repository/areas_repository.dart';
import 'package:zimbapos/repository/category_repository.dart';
import 'package:zimbapos/repository/customer_repository.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/repository/rate_sets_repository.dart';
import 'package:zimbapos/repository/table_repository.dart';
import 'package:zimbapos/repository/workers_repository.dart';

class IsarService {
  late Isar db;
  IsarService(Directory directory) {
    db = openDB(directory);
  }
  //Checks for db is present or not
  Isar openDB(Directory directory) {
    if (!Isar.instanceNames.contains(dbName)) {
      db = Isar.openSync(
        [
          
          RateSetsModelSchema,
         
          TableModelSchema,
          AreasModelSchema,
        ,
          WorkersModelSchema,
          CustomerCategoryModelSchema,
          CategoryModelSchema
        ],
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
  //for ratesets
  RateSetsRepository get rateSetsRepository => RateSetsRepository(db);
  //for tables
  TableRepository get tableRepository => TableRepository(db);
  //for areas
  AreasRepository get areasRepository => AreasRepository(db);
  WorkerRepository get workerRepository => WorkerRepository(db);

  CustomerRepository get customerRepository => CustomerRepository(db);

  CategoryRepository get categoryRepository => CategoryRepository(db);
}
