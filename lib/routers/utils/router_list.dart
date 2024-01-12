import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/areas_screen.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/create_area_screen.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/edit_area_screen.dart';
import 'package:zimbapos/screens/componant_screens/category_screens/category_screen.dart';
import 'package:zimbapos/screens/componant_screens/category_screens/create_category_screen.dart';
import 'package:zimbapos/screens/componant_screens/customer_category_screens/create_cust_cat_screen.dart';
import 'package:zimbapos/screens/componant_screens/customer_category_screens/customer_category_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/create_rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/edit_rate_set_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/set_up_screens/initial_setup_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/create_table_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/edit_table_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/table_screen.dart';
import 'package:zimbapos/screens/componant_screens/worker_management_screens/create_workers_screen.dart';
import 'package:zimbapos/screens/componant_screens/worker_management_screens/edit_worker_screen.dart';
import 'package:zimbapos/screens/componant_screens/worker_management_screens/worker_overview_screen.dart';
import 'package:zimbapos/screens/home_screen.dart';
import 'package:zimbapos/screens/login/login_view.dart';

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
    builder: (context, state) => EditRateSetScreen(
      item: state.extra as RateSetsModel,
    ),
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
  //table list
  GoRoute(
    name: AppScreen.editTableScreen.name,
    path: AppScreen.editTableScreen.path,
    builder: (context, state) => UpdateTableScreen(
      item: state.extra as TableModel,
    ),
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
    builder: (context, state) => EditAreaScreen(
      item: state.extra as AreasModel,
    ),
  ),
  //worker overview
  GoRoute(
    name: AppScreen.workerOverviewScreen.name,
    path: AppScreen.workerOverviewScreen.path,
    builder: (context, state) => const WorkerOverviewScreen(),
  ),
  GoRoute(
    name: AppScreen.createWorkerScreen.name,
    path: AppScreen.createWorkerScreen.path,
    builder: (context, state) => const CreateWorkerScreen(),
  ),
  GoRoute(
    name: AppScreen.editWorkerScreen.name,
    path: AppScreen.editWorkerScreen.path,
    builder: (context, state) {
      if (state.extra is WorkersModel) {
        return EditWorkerScreen(initialModel: state.extra as WorkersModel);
      } else {
        return EditWorkerScreen(
            initialModel: WorkersModel.fromJson(state.extra as String));
      }
    },
  ),
  GoRoute(
    name: AppScreen.initialSetUpScreen.name,
    path: AppScreen.initialSetUpScreen.path,
    builder: (context, state) => const InitialSetUpScreen(),
  ),
  GoRoute(
    name: AppScreen.customerCategory.name,
    path: AppScreen.customerCategory.path,
    builder: (context, state) => const CustomerCategoryScreen(),
  ),
  GoRoute(
    name: AppScreen.createCustomerCategory.name,
    path: AppScreen.createCustomerCategory.path,
    builder: (context, state) => const CreateCusCatScreen(),
  ),
  GoRoute(
    name: AppScreen.category.name,
    path: AppScreen.category.path,
    builder: (context, state) => const CategoryScreen(),
  ),
  GoRoute(
    name: AppScreen.createCategory.name,
    path: AppScreen.createCategory.path,
    builder: (context, state) => const CreateCategoryScreen(),
  ),
];
