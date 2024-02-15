import 'package:flutter/material.dart';
import 'package:server/apis/controller/pay_mode_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class PayModeRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final PayModeController controller;
  PayModeRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = PayModeController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.get('/fetch-pay-mode', controller.fetchAllPayModes);
    locRoute.post('/create-pay-mode', controller.createPayMode);
    locRoute.post('/update-pay-mode', controller.updatePayMode);
    locRoute.delete('/delete-pay-mode', controller.deletePayMode);
  }
}
