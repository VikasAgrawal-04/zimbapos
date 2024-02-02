import 'package:flutter/material.dart';
import 'package:server/apis/controller/terminal_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class TerminalRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final TerminalController controller;

  TerminalRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = TerminalController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {}
}
