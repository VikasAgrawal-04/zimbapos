import 'package:flutter/material.dart';
import 'package:server/apis/controller/tax_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class TaxRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final TaxController controller;
  TaxRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = TaxController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-taxes', controller.fetchAllTax);
    locRoute.post('/create-tax', controller.createTax);
    locRoute.post('/update-tax', controller.updateTax);
    locRoute.delete('/delete-tax', controller.deleteTax);
  }
}
