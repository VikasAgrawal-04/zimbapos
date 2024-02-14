import 'dart:io';

import 'package:isar/isar.dart';
import 'package:zimbapos/constants/contants.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/global_models/pay_in_model.dart';
import 'package:zimbapos/models/global_models/pay_out_model.dart';
import 'package:zimbapos/models/global_models/permanent_bill_header_model.dart';
import 'package:zimbapos/models/global_models/permanent_bill_lines_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/models/global_models/shift_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/models/global_models/temp_bill_header_model.dart';
import 'package:zimbapos/models/global_models/temp_bill_lines_model.dart';
import 'package:zimbapos/models/global_models/terminal_model.dart';
import 'package:zimbapos/models/global_models/user_role_screen_function_model.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/models/system_models/home_shortcut_model.dart';
import 'package:zimbapos/models/user_models/subscriber_model.dart';
import 'package:zimbapos/models/user_models/system_config_model.dart';
import 'package:zimbapos/models/user_models/user_model.dart';
import 'package:zimbapos/repository/areas_repository.dart';
import 'package:zimbapos/repository/bill_repository.dart';
import 'package:zimbapos/repository/card_log_repository.dart';
import 'package:zimbapos/repository/category_repository.dart';
import 'package:zimbapos/repository/customer_category_repository.dart';
import 'package:zimbapos/repository/customer_repository.dart';
import 'package:zimbapos/repository/discount_single_repo.dart';
import 'package:zimbapos/repository/expense_category_repository.dart';
import 'package:zimbapos/repository/expenses_repository.dart';
import 'package:zimbapos/repository/item_group_repository.dart';
import 'package:zimbapos/repository/items_repository.dart';
import 'package:zimbapos/repository/main_group_repository.dart';
import 'package:zimbapos/repository/pay_in_out_repository.dart';
import 'package:zimbapos/repository/payments_repository.dart';
import 'package:zimbapos/repository/rate_sets_repository.dart';
import 'package:zimbapos/repository/shift_repository.dart';
import 'package:zimbapos/repository/system_repository/home_shortcut_repository.dart';
import 'package:zimbapos/repository/system_repository/system_configuration_repository.dart';
import 'package:zimbapos/repository/table_repository.dart';
import 'package:zimbapos/repository/taxes_repository.dart';
import 'package:zimbapos/repository/terminal_repository.dart';
import 'package:zimbapos/repository/user_repository/subscription_repository.dart';
import 'package:zimbapos/repository/user_repository/user_repository.dart';
import 'package:zimbapos/repository/user_repository/user_role_screen_repository.dart';
import 'package:zimbapos/repository/user_repository/user_roles_repository.dart';
import 'package:zimbapos/repository/vendor_repository.dart';
import 'package:zimbapos/repository/workers_repository.dart';

import '../models/global_models/card_log_model.dart';
import '../models/global_models/card_model.dart';
import '../models/global_models/customer_model.dart';
import '../models/global_models/discount_single_model.dart';
import '../models/global_models/expense_category_model.dart';
import '../models/global_models/expenses_model.dart';
import '../models/global_models/items_model.dart';
import '../models/global_models/payments_model.dart';
import '../models/global_models/tax_model.dart';
import '../models/global_models/vendor_model.dart';
import 'card_repository.dart';

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
          DiscountModelSchema,
          MainGroupModelSchema,
          ItemGroupModelSchema,
          TempBillHeaderModelSchema,
          TempBillLinesSchema,
          TerminalModelSchema,
          CardModelSchema,
          CardLogModelSchema,
          CustomerModelSchema,
          PermanentBillHeaderModelSchema,
          PermanentBillLinesModelSchema,
          UserRolesModelSchema,
          UserRoleScreenFunctionModelSchema,
          ShiftModelSchema,
          PayInModelSchema,
          PayOutModelSchema
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
  CustomerCategoryRepository get customerCategoryRepository =>
      CustomerCategoryRepository(db);
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
  //for discounts
  DiscountRepository get discountRepository => DiscountRepository(db);
  //for main group
  MainGroupRepository get mainGroupRepository => MainGroupRepository(db);
  //for item group
  ItemGroupRepository get itemGroupReposiory => ItemGroupRepository(db);
  //for bill repo
  BillRepository get billRepository => BillRepository(db);

  TerminalRepository get terminalRepository => TerminalRepository(db);
  //for cards
  CardRepository get cardRepository => CardRepository(db);
  //for card logs
  CardLogRepository get cardLogRepository => CardLogRepository(db);

  CustomerRepository get customerRepository => CustomerRepository(db);

  UserRolesRepository get userRoleRepository => UserRolesRepository(db);

  UserRoleScreenRepository get userRoleScreenRepository =>
      UserRoleScreenRepository(db);

  ShiftRepository get shiftRepository => ShiftRepository(db);

  PayInOutRepository get payInOutRepository => PayInOutRepository(db);
}
