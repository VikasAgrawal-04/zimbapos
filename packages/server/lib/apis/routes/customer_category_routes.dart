import 'package:flutter/material.dart';
import 'package:server/apis/controller/customer_category_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class CustomerCategoryRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final CustCatController controller;

  CustomerCategoryRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = CustCatController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-customer-categories', controller.fetchCustCategory);
    locRoute.post('/create-customer-category', controller.createCustCategory);
  }
}
