import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/area/area_list.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/create_rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/set_up_screens/initial_setup_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/create_table_screen.dart';
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
  GoRoute(
    name: AppScreen.rateSetScreen.name,
    path: AppScreen.rateSetScreen.path,
    builder: (context, state) => const RateSetOverviewScreen(),
  ),
  GoRoute(
    name: AppScreen.createRateSetsScreen.name,
    path: AppScreen.createRateSetsScreen.path,
    builder: (context, state) => const CreateRateSetsScreen(),
  ),
  GoRoute(
    name: AppScreen.tableScreen.name,
    path: AppScreen.tableScreen.path,
    builder: (context, state) => const TableScreen(),
  ),
  GoRoute(
    name: AppScreen.createTableScreen.name,
    path: AppScreen.createTableScreen.path,
    builder: (context, state) => const CreateTableScreen(),
  ),
  //login
  GoRoute(
    name: AppScreen.loginScreen.name,
    path: AppScreen.loginScreen.path,
    builder: (context, state) => LoginScreen(),
  ),
  //cart
  GoRoute(
    name: AppScreen.cartScreen.name,
    path: AppScreen.cartScreen.path,
    builder: (context, state) => LoginScreen(),
  ),
  //areas
  GoRoute(
    name: AppScreen.areasScreen.name,
    path: AppScreen.areasScreen.path,
    builder: (context, state) => const AreaListScreen(),
  ),
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
];
