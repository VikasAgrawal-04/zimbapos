import 'package:flutter/material.dart';
import 'package:server/apis/controller/user_screen_functions_junction_controller.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class UserSFJunctionRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final SFJunctionController controller;
  UserSFJunctionRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = SFJunctionController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.get('/get-all-sf-junction', controller.getAllRoleScrnFn);
    locRoute.get('/get-sf-roles', (Request request) async {
      await authorizationHandler(
          request, controller.getScrnFnForRoles, dbCubit);
    });
    locRoute.get('/get-sf-admin', controller.getScrnFnRole);
    locRoute.post('/create-sf-junction', controller.createScrnFnJunction);
    locRoute.post('/update-sf-junction', controller.updateScrnFnJunction);
    locRoute.delete('/delete-sf-junction', controller.deleteScrnFnJunction);
  }
}
