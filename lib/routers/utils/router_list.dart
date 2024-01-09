import 'package:go_router/go_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/home_screen.dart';

final List<GoRoute> routerList = [
  GoRoute(
    name: AppScreen.homeScreen.name,
    path: AppScreen.homeScreen.path,
    builder: (context, state) => const HomeScreen(),
  ),
];
