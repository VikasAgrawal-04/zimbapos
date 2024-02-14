import 'package:flutter/material.dart';
import 'package:server/apis/controller/pay_in_out_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class PayInOutRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final PayInOutController controller;
  PayInOutRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = PayInOutController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {}
}
