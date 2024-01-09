import 'package:go_router/go_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/create_rate_sets_screen.dart';
import 'package:zimbapos/screens/componant_screens/rate_sets_screens/rate_sets_screen.dart';
import 'package:zimbapos/screens/home_Screen.dart';

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
];
