import 'package:go_router/go_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/login/login_view.dart';

import '../../screens/home/home_view.dart';

final List<GoRoute> routerList = [
  //home
  GoRoute(
    name: AppScreen.homeScreen.name,
    path: AppScreen.homeScreen.path,
    builder: (context, state) => const HomeScreen(),
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
];
