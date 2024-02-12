import 'package:flutter/material.dart';
import 'package:server/apis/controller/user_roles_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class UserRoleRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final UserRoleController controller;
  UserRoleRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = UserRoleController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.get('/fetch-user-roles', controller.fetchAllRoles);
    locRoute.post('/create-user-role', controller.createRole);
    locRoute.post('/update-user-role', controller.updateRole);
    locRoute.delete('/delete-user-role', controller.deleteUserRole);
  }
}
