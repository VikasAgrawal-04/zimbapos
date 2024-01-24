import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/models/global_models/expense_category_model.dart';
import 'package:zimbapos/models/global_models/expenses_model.dart';
import 'package:zimbapos/models/global_models/items_model.dart';
import 'package:zimbapos/models/global_models/payments_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';
import 'package:zimbapos/models/global_models/vendor_model.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/componant_screens/Items_screen/create_item_screen.dart';
import 'package:zimbapos/screens/componant_screens/Items_screen/edit_item_screen.dart';
import 'package:zimbapos/screens/componant_screens/Items_screen/items_list_screen.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/areas_screen.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/create_area_screen.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/edit_area_screen.dart';
import 'package:zimbapos/screens/componant_screens/category_screens/category_screen.dart';
import 'package:zimbapos/screens/componant_screens/category_screens/create_category_screen.dart';
import 'package:zimbapos/screens/componant_screens/category_screens/edit_cat_screen.dart';
import 'package:zimbapos/screens/componant_screens/customer_category_screens/create_cust_cat_screen.dart';
import 'package:zimbapos/screens/componant_screens/customer_category_screens/customer_category_screen.dart';
import 'package:zimbapos/screens/componant_screens/customer_category_screens/edit_cust_cat_screen.dart';
import 'package:zimbapos/screens/componant_screens/expense_category_screen/create_exp_cat_screen.dart';
import 'package:zimbapos/screens/componant_screens/expense_category_screen/edit_exp_cat_screen.dart';
import 'package:zimbapos/screens/componant_screens/expense_category_screen/exp_cat_list_screen.dart';
import 'package:zimbapos/screens/componant_screens/expenses_screens/create_expense_screen.dart';
import 'package:zimbapos/screens/componant_screens/expenses_screens/edit_expense_screen.dart';
import 'package:zimbapos/screens/componant_screens/expenses_screens/expense_list_screen.dart';
import 'package:zimbapos/screens/componant_screens/payments_screen/create_payment_screen.dart';
import 'package:zimbapos/screens/componant_screens/payments_screen/edit_payment_screen.dart';
import 'package:zimbapos/screens/componant_screens/payments_screen/payment_list_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/create_rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/edit_rate_set_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/set_up_screens/config_screens/outlet_setup_screens/outlet_data_setup_screen.dart';
import 'package:zimbapos/screens/componant_screens/set_up_screens/initial_setup_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/create_table_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/edit_table_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/table_screen.dart';
import 'package:zimbapos/screens/componant_screens/tax_screen/create_tax_screen.dart';
import 'package:zimbapos/screens/componant_screens/tax_screen/edit_tax_screen.dart';
import 'package:zimbapos/screens/componant_screens/tax_screen/tax_list_screen.dart';
import 'package:zimbapos/screens/componant_screens/vendors_screen/create_vendor_screen.dart';
import 'package:zimbapos/screens/componant_screens/vendors_screen/edit_vendors_screen.dart';
import 'package:zimbapos/screens/componant_screens/vendors_screen/vendors_list_screen.dart';
import 'package:zimbapos/screens/componant_screens/worker_management_screens/create_workers_screen.dart';
import 'package:zimbapos/screens/componant_screens/worker_management_screens/edit_worker_screen.dart';
import 'package:zimbapos/screens/componant_screens/worker_management_screens/worker_overview_screen.dart';
import 'package:zimbapos/screens/home_screen.dart';
import 'package:zimbapos/screens/login/login_view.dart';
import 'package:zimbapos/screens/ordering%20screens/order_dashboard_screen.dart';

final List<GoRoute> routerList = [
  //home
  GoRoute(
    name: AppScreen.homeScreen.name,
    path: AppScreen.homeScreen.path,
    builder: (context, state) => const HomeScreen(),
  ),
  //ratesetlist
  GoRoute(
    name: AppScreen.rateSetScreen.name,
    path: AppScreen.rateSetScreen.path,
    builder: (context, state) => const RateSetOverviewScreen(),
  ),
  //rateset edit
  GoRoute(
    name: AppScreen.editRateSetScreen.name,
    path: AppScreen.editRateSetScreen.path,
    builder: (context, state) {
      if (state.extra is RateSetsModel) {
        return EditRateSetScreen(item: state.extra as RateSetsModel);
      } else {
        return EditRateSetScreen(
            item: RateSetsModel.fromJson(state.extra as String));
      }
    },
  ),
  //rateset create
  GoRoute(
    name: AppScreen.createRateSetsScreen.name,
    path: AppScreen.createRateSetsScreen.path,
    builder: (context, state) => const CreateRateSetsScreen(),
  ),
  //table list
  GoRoute(
    name: AppScreen.tableScreen.name,
    path: AppScreen.tableScreen.path,
    builder: (context, state) => const TableScreen(),
  ),
  //table create
  GoRoute(
    name: AppScreen.createTableScreen.name,
    path: AppScreen.createTableScreen.path,
    builder: (context, state) => const CreateTableScreen(),
  ),
  //table edit
  GoRoute(
    name: AppScreen.editTableScreen.name,
    path: AppScreen.editTableScreen.path,
    builder: (context, state) {
      if (state.extra is TableModel) {
        return UpdateTableScreen(item: state.extra as TableModel);
      } else {
        return UpdateTableScreen(
            item: TableModel.fromJson(state.extra as String));
      }
    },
    // builder: (context, state) => UpdateTableScreen(
    //   item: state.extra as TableModel,
    // ),
  ),
  //login
  GoRoute(
    name: AppScreen.loginScreen.name,
    path: AppScreen.loginScreen.path,
    builder: (context, state) => const LoginScreen(),
  ),
  //areas list
  GoRoute(
    name: AppScreen.areasScreen.name,
    path: AppScreen.areasScreen.path,
    builder: (context, state) => const AreasOverviewScreen(),
  ),
  //areas create
  GoRoute(
    name: AppScreen.createAreasScreen.name,
    path: AppScreen.createAreasScreen.path,
    builder: (context, state) => const CreateAreasScreen(),
  ),
  //areas edit
  GoRoute(
    name: AppScreen.editAreaScreen.name,
    path: AppScreen.editAreaScreen.path,
    builder: (context, state) {
      if (state.extra is AreasModel) {
        return EditAreaScreen(item: state.extra as AreasModel);
      } else {
        return EditAreaScreen(
          item: AreasModel.fromMap(state.extra as Map<String, dynamic>),
        );
      }
    },
    // builder: (context, state) => EditAreaScreen(
    //   item: state.extra as AreasModel,
    // ),
  ),
  //worker overview
  GoRoute(
    name: AppScreen.workerOverviewScreen.name,
    path: AppScreen.workerOverviewScreen.path,
    builder: (context, state) => const WorkerOverviewScreen(),
  ),
  //create worker
  GoRoute(
    name: AppScreen.createWorkerScreen.name,
    path: AppScreen.createWorkerScreen.path,
    builder: (context, state) => const CreateWorkerScreen(),
  ),
  //edit worker
  GoRoute(
    name: AppScreen.editWorkerScreen.name,
    path: AppScreen.editWorkerScreen.path,
    builder: (context, state) {
      if (state.extra is WorkersModel) {
        return EditWorkerScreen(initialModel: state.extra as WorkersModel);
      } else {
        return EditWorkerScreen(
          initialModel: WorkersModel.fromJson(state.extra as String),
        );
      }
    },
  ),
  //initial setup
  GoRoute(
    name: AppScreen.initialSetUpScreen.name,
    path: AppScreen.initialSetUpScreen.path,
    builder: (context, state) => const InitialSetUpScreen(),
  ),
  //customer category
  GoRoute(
    name: AppScreen.customerCategory.name,
    path: AppScreen.customerCategory.path,
    builder: (context, state) => const CustomerCategoryScreen(),
  ),
  // create customer category
  GoRoute(
    name: AppScreen.createCustomerCategory.name,
    path: AppScreen.createCustomerCategory.path,
    builder: (context, state) => const CreateCusCatScreen(),
  ),
  // edit customer category
  GoRoute(
    name: AppScreen.editCustomerCategory.name,
    path: AppScreen.editCustomerCategory.path,
    builder: (context, state) {
      if (state.extra is CustomerCategoryModel) {
        return UpdateCustomerCategoryScreen(
            item: state.extra as CustomerCategoryModel);
      } else {
        return UpdateCustomerCategoryScreen(
          item: CustomerCategoryModel.fromJson(state.extra as String),
        );
      }
    },
  ),
  //category list
  GoRoute(
    name: AppScreen.category.name,
    path: AppScreen.category.path,
    builder: (context, state) => const CategoryScreen(),
  ),
  // create category
  GoRoute(
    name: AppScreen.createCategory.name,
    path: AppScreen.createCategory.path,
    builder: (context, state) => const CreateCategoryScreen(),
  ),
  //edit category
  GoRoute(
    name: AppScreen.editCategory.name,
    path: AppScreen.editCategory.path,
    builder: (context, state) {
      if (state.extra is CategoryModel) {
        return UpdateCategoryScreen(item: state.extra as CategoryModel);
      } else {
        return UpdateCategoryScreen(
          item: CategoryModel.fromJson(state.extra as String),
        );
      }
    },
  ),
  //Vendor list
  GoRoute(
    name: AppScreen.vendorScreen.name,
    path: AppScreen.vendorScreen.path,
    builder: (context, state) => const VendorsListScreen(),
  ),
  // create vendor
  GoRoute(
    name: AppScreen.createVendorScreen.name,
    path: AppScreen.createVendorScreen.path,
    builder: (context, state) => const CreateVendorScreen(),
  ),
  //edit vendor
  GoRoute(
    name: AppScreen.editVendorScreen.name,
    path: AppScreen.editVendorScreen.path,
    builder: (context, state) {
      if (state.extra is VendorModel) {
        return UpdateVendorScreen(item: state.extra as VendorModel);
      } else {
        return UpdateVendorScreen(
          item: VendorModel.fromMap(state.extra as Map<String, dynamic>),
        );
      }
    },
  ),
  //Expense cat list
  GoRoute(
    name: AppScreen.expenseCategoryScreen.name,
    path: AppScreen.expenseCategoryScreen.path,
    builder: (context, state) => const ExpenseCategoryListScreen(),
  ),
  // Expense cat create
  GoRoute(
    name: AppScreen.createExpenseCategoryScreen.name,
    path: AppScreen.createExpenseCategoryScreen.path,
    builder: (context, state) => const CreateExpenseCategoryScreen(),
  ),
  //edit Expense cat
  GoRoute(
    name: AppScreen.editExpenseCategoryScreen.name,
    path: AppScreen.editExpenseCategoryScreen.path,
    builder: (context, state) {
      if (state.extra is ExpenseCategoryModel) {
        return UpdateExpenseCategoryScreen(
            item: state.extra as ExpenseCategoryModel);
      } else {
        return UpdateExpenseCategoryScreen(
          item:
              ExpenseCategoryModel.fromMap(state.extra as Map<String, dynamic>),
        );
      }
    },
  ),
  //Expenses list
  GoRoute(
    name: AppScreen.expensesScreen.name,
    path: AppScreen.expensesScreen.path,
    builder: (context, state) => const ExpensesListScreen(),
  ),
  // create expense
  GoRoute(
    name: AppScreen.createExpenseScreen.name,
    path: AppScreen.createExpenseScreen.path,
    builder: (context, state) => const CreateExpenseScreen(),
  ),
  //edit expense
  GoRoute(
    name: AppScreen.editExpenseScreen.name,
    path: AppScreen.editExpenseScreen.path,
    builder: (context, state) {
      if (state.extra is ExpenseModel) {
        return UpdateExpenseScreen(item: state.extra as ExpenseModel);
      } else {
        return UpdateExpenseScreen(
          item: ExpenseModel.fromMap(state.extra as Map<String, dynamic>),
        );
      }
    },
  ),
  //Ordering Section Pages
  GoRoute(
    path: AppScreen.orderDashboardScreen.path,
    name: AppScreen.orderDashboardScreen.name,
    builder: (context, state) {
      return const OrderDashboardScreen();
    },
  ),
  GoRoute(
    path: AppScreen.outletDataRegisterScreen.path,
    name: AppScreen.outletDataRegisterScreen.name,
    builder: (context, state) => const OutLetDataSetUpScreen(),
  ),
  //Taxes list
  GoRoute(
    name: AppScreen.taxesScreen.name,
    path: AppScreen.taxesScreen.path,
    builder: (context, state) => const TaxListScreen(),
  ),
  // create tax
  GoRoute(
    name: AppScreen.createTaxScreen.name,
    path: AppScreen.createTaxScreen.path,
    builder: (context, state) => const CreateTaxScreen(),
  ),
  //edit tax
  GoRoute(
    name: AppScreen.editTaxScreen.name,
    path: AppScreen.editTaxScreen.path,
    builder: (context, state) {
      if (state.extra is TaxModel) {
        return EditTaxScreen(item: state.extra as TaxModel);
      } else {
        return EditTaxScreen(
          item: TaxModel.fromJson(state.extra as Map<String, dynamic>),
        );
      }
    },
  ),
  //item list
  GoRoute(
    name: AppScreen.itemsScreen.name,
    path: AppScreen.itemsScreen.path,
    builder: (context, state) => const ItemsListScreen(),
  ),
  // create item
  GoRoute(
    name: AppScreen.createItemScreen.name,
    path: AppScreen.createItemScreen.path,
    builder: (context, state) => const CreateItemScreen(),
  ),
  //edit item
  GoRoute(
    name: AppScreen.editItemScreen.name,
    path: AppScreen.editItemScreen.path,
    builder: (context, state) {
      if (state.extra is ItemsModel) {
        return EditItemsScreen(item: state.extra as ItemsModel);
      } else {
        return EditItemsScreen(
          item: ItemsModel.fromJson(state.extra as Map<String, dynamic>),
        );
      }
    },
  ),

  //payment list
  GoRoute(
    name: AppScreen.paymentsScreen.name,
    path: AppScreen.paymentsScreen.path,
    builder: (context, state) => const PaymentListScreen(),
  ),
  // create payment
  GoRoute(
    name: AppScreen.createPaymentsScreen.name,
    path: AppScreen.createPaymentsScreen.path,
    builder: (context, state) => const CreatePaymentScreen(),
  ),
  //edit payment
  GoRoute(
    name: AppScreen.editPaymentsScreen.name,
    path: AppScreen.editPaymentsScreen.path,
    builder: (context, state) {
      if (state.extra is PaymentModel) {
        return UpdatePaymentScreen(item: state.extra as PaymentModel);
      } else {
        return UpdatePaymentScreen(
          item: PaymentModel.fromJson(state.extra as Map<String, dynamic>),
        );
      }
    },
  ),
];
