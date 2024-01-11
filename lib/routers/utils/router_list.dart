import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/areas_screen.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/create_area_screen.dart';
import 'package:zimbapos/screens/componant_screens/area_screen/edit_area_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/create_rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/edit_rate_set_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/create_table_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/edit_table_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/table_screen.dart';
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
    builder: (context, state) => LoginScreen(),
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
];
