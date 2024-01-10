import 'package:go_router/go_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/area/area_list.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/create_rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/create_table_screen.dart';
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
];
