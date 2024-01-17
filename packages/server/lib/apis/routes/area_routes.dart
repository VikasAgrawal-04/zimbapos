import 'package:flutter/material.dart';
import 'package:server/apis/controller/area_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class AreaRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final AreaController controller;

  AreaRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = AreaController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-area', controller.fetchAllArea);
    // locRoute.post('/create-area', controller.createArea);
    // locRoute.post('/update-area', controller.updateArea);
    // locRoute.delete('/delete-area', controller.deleteArea);
  }
}
