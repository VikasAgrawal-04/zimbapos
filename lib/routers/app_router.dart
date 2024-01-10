import 'package:go_router/go_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/routers/utils/router_list.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppScreen.loginScreen.path,
    routes: routerList,
  );
}
