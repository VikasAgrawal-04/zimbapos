import 'package:flutter/material.dart';
import 'package:server/apis/controller/item_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class ItemRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final ItemController controller;
  ItemRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = ItemController(dbCubit);
    initialiseApi();
  }

  void initialiseApi() {
    locRoute.get('/get-all-items', controller.fetchAllItems);
    locRoute.get('/get-items-id', controller.fetchItemsByGroupId);
    locRoute.post('/create-item', controller.createItem);
    locRoute.post('/update-item', controller.updateItem);
    locRoute.delete('/delete-item', controller.deleteItem);
  }
}
