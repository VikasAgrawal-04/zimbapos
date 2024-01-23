import 'dart:io';

import 'package:isar/isar.dart';
import 'package:zimbapos/constants/contants.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/models/system_models/home_shortcut_model.dart';
import 'package:zimbapos/models/user_models/subscriber_model.dart';
import 'package:zimbapos/models/user_models/system_config_model.dart';
import 'package:zimbapos/models/user_models/user_model.dart';
import 'package:zimbapos/repository/areas_repository.dart';
import 'package:zimbapos/repository/category_repository.dart';
import 'package:zimbapos/repository/customer_repository.dart';
import 'package:zimbapos/repository/discount_bulk_repo.dart';
import 'package:zimbapos/repository/discount_single_repo.dart';
import 'package:zimbapos/repository/expense_category_repository.dart';
import 'package:zimbapos/repository/expenses_repository.dart';
import 'package:zimbapos/repository/items_repository.dart';
import 'package:zimbapos/repository/payments_repository.dart';
import 'package:zimbapos/repository/rate_sets_repository.dart';
import 'package:zimbapos/repository/system_repository/home_shortcut_repository.dart';
import 'package:zimbapos/repository/system_repository/system_configuration_repository.dart';
import 'package:zimbapos/repository/table_repository.dart';
import 'package:zimbapos/repository/taxes_repository.dart';
import 'package:zimbapos/repository/user_repository/subscription_repository.dart';
import 'package:zimbapos/repository/user_repository/user_repository.dart';
import 'package:zimbapos/repository/vendor_repository.dart';
import 'package:zimbapos/repository/workers_repository.dart';
import '../models/global_models/discount_bulk_model.dart';
import '../models/global_models/discount_single_model.dart';
import '../models/global_models/expense_category_model.dart';
import '../models/global_models/expenses_model.dart';
import '../models/global_models/items_model.dart';
import '../models/global_models/payments_model.dart';
import '../models/global_models/tax_model.dart';
import '../models/global_models/vendor_model.dart';

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
          WorkersModelSchema,
          CustomerCategoryModelSchema,
          CategoryModelSchema,
          HomeShortcutModelSchema,
          SystemConfigModelSchema,
          SubscriberModelSchema,
          VendorModelSchema,
          ExpenseCategoryModelSchema,
          ExpenseModelSchema,
          UserModelSchema,
          TaxModelSchema,
          ItemsModelSchema,
          PaymentModelSchema,
          BulkDiscSchema,
          SingleDiscSchema
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
  //for workers
  WorkerRepository get workerRepository => WorkerRepository(db);
  //for customer
  CustomerRepository get customerRepository => CustomerRepository(db);
  //for category
  CategoryRepository get categoryRepository => CategoryRepository(db);

  //Here are the repository which are required my the software to show internal set up and personal configurations
  HomeShortcutrepository get homeSc => HomeShortcutrepository(db);
  SystemConfigurationRepository get systemConfig =>
      SystemConfigurationRepository(db);
  SubscriptionRepository get subsscriberRepo => SubscriptionRepository(db);
  //for vendors
  VendorRepository get vendorRepository => VendorRepository(db);
  //for Expense category
  ExpenseCategoryRepository get expenseCategoryRepository =>
      ExpenseCategoryRepository(db);
  //for Expenses
  ExpensesRepository get expensesRepository => ExpensesRepository(db);

  UserRepository get userRepository => UserRepository(db);
  //for taxes
  TaxesRepository get taxesRepository => TaxesRepository(db);
  //for items
  ItemsRepository get itemsRepository => ItemsRepository(db);
  //for payments
  PaymentsRepository get paymentsRepository => PaymentsRepository(db);
  //for single discount
  DiscSingleRepository get discSingleRepo => DiscSingleRepository(db);
  //for bulk discount
  DiscBulkRepository get discBulkRepo => DiscBulkRepository(db);
}
