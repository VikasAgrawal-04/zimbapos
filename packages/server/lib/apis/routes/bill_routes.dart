import 'package:flutter/material.dart';
import 'package:server/apis/controller/bill_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class BillRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final BillController controller;
  BillRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = BillController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.get('/get-temp-bill', controller.getBillDetails);
    locRoute.post('/action-temp-bill', controller.createOrUpdateBill);
  }
}
