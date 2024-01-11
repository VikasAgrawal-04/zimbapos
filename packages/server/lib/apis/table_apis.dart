import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class TablesApi {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;

  TablesApi(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-tables', (Request request) async {
      final tables = await dbCubit.tableRepository.getAllTables();
      return Response.ok(jsonEncode({'data': tables}));
    });
  }
}
