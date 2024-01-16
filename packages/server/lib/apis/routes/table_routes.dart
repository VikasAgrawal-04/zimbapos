import 'package:flutter/material.dart';
import 'package:server/apis/controller/table_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class TablesRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final TableController controller;

  TablesRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = TableController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-tables', controller.fetchAllTables);
    locRoute.post('/create-table', controller.createTable);
    locRoute.post('/update-table', controller.updateTable);
    locRoute.delete('/delete-table', controller.deleteTable);
  }
}
