import 'package:flutter/material.dart';
import 'package:server/apis/controller/workers_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class WorkerRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final WorkerController controller;

  WorkerRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = WorkerController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.post('/create-worker', controller.createWorker);
  }
}
