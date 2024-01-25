import 'package:flutter/material.dart';
import 'package:server/apis/controller/category_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class CategoryRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final CategoryController controller;
  CategoryRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = CategoryController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-category', controller.fetchAllCategory);
    locRoute.post('/create-category', controller.createCategory);
    locRoute.delete('/delete-category', controller.deleteCategory);
    locRoute.post('/update-category', controller.updateCategory);
  }
}
