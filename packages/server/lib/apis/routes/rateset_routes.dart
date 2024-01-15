import 'package:flutter/material.dart';
import 'package:server/apis/controller/rateset_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class RateSetRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final RateSetController controller;
  RateSetRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = RateSetController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.get('/get-ratesets', controller.fetchAllRateSets);
    locRoute.post('/create-ratesets', controller.createRateSets);
    locRoute.post('/update-ratesets', controller.updateRateSet);
    locRoute.delete('/delete-ratesets', controller.deleteRateSet);
  }
}
