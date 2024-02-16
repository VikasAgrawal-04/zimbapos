import 'package:flutter/material.dart';
import 'package:server/apis/controller/user_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class UserRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final UserController controller;

  UserRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = UserController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-all-users', controller.getAllUsers);
    locRoute.post('/register-user', controller.registerUser);
    locRoute.post('/login-user', controller.loginUser);
  }
}
