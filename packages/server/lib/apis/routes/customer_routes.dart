import 'package:flutter/material.dart';
import 'package:server/apis/controller/customer_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class CustomerRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final CustomerController controller;
  CustomerRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = CustomerController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
     locRoute.get('/get-customer-list', controller.fetchCustomer);
    locRoute.post('/create-customer', controller.createCustomer);
    locRoute.post('/update-customer', controller.updateCustomer);
    locRoute.delete('/delete-customer', controller.deleteCustomer);
  }
}

