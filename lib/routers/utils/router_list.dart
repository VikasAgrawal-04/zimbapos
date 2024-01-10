import 'package:go_router/go_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/create_rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/create_table_screen.dart';
import 'package:zimbapos/screens/componant_screens/table_screens/table_screen.dart';
import 'package:zimbapos/screens/home_screen.dart';

final List<GoRoute> routerList = [
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
];
