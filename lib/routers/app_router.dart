import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/routers/utils/router_list.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppScreen.homeScreen.path,
    routes: routerList,
    redirect: (context, state) {
      final databaseCubit = context.read<DatabaseCubit>();
      //Check if system have the OutletID
      bool outletcheck = databaseCubit.outletId == null;
      if (outletcheck) {
        return AppScreen.createTaxScreen.path;
      }
      return null;
    },
  );
}
