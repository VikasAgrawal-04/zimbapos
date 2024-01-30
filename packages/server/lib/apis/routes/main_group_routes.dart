import 'package:flutter/material.dart';
import 'package:server/apis/controller/main_group_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class MainGroupRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final MainGroupController controller;
  MainGroupRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = MainGroupController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-main-groups', controller.fetchMainGroups);
    locRoute.post('/create-main-group', controller.createMainGroup);
    locRoute.post('/update-main-group', controller.updateMainGroup);
    locRoute.delete('/delete-main-group', controller.deleteMainGroup);
  }
}
