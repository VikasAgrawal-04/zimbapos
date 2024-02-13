import 'package:flutter/material.dart';
import 'package:server/apis/controller/user_screen_functions_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class UserScreenFnRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final UserScreenController controller;
  UserScreenFnRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = UserScreenController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.get('/get-screen-fn', controller.fetchAllScreenFunction);
    locRoute.post('/create-screen-fn', controller.createScreenFn);
    locRoute.post('/update-screen-fn', controller.updateScreenFn);
    locRoute.delete('/delete-screen-fn', controller.deleteScreenFn);
  }
}
