import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_cubit.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/routers/utils/router_list.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: AppScreen.homeScreen.path,
    routes: routerList,
    redirect: (context, state) {
      final databaseCubit = context.read<DatabaseCubit>();
      final deviceControl = context.read<DeviceControlCubit>();

      bool outletcheck = databaseCubit.outletId == null;
      bool terminalTypecheck = deviceControl.mainTerminal == null;
      if (outletcheck) {
        return AppScreen.outletDataRegisterScreen.path;
      }
      if (terminalTypecheck) {
        return AppScreen.terminalSetUpScreen.path;
      }
      return null;
    },
  );
}
