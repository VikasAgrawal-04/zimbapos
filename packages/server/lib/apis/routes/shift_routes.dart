import 'package:flutter/material.dart';
import 'package:server/apis/controller/shift_controller.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class ShiftRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final ShiftController controller;
  ShiftRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = ShiftController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.get('/get-shift-id', (Request request) async {
      return authorizationHandler(request, controller.getShiftId, dbCubit);
    });

    locRoute.post('/start-shift', (Request request) async {
      return authorizationHandler(request, controller.startShift, dbCubit);
    });

    locRoute.post('/end-shift', (Request request) async {
      return authorizationHandler(request, controller.endShift, dbCubit);
    });
  }
}
