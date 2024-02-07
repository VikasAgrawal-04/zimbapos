import 'package:flutter/material.dart';
import 'package:server/apis/controller/item_group_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';

class ItemGroupRoutes {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final ItemGroupController controller;
  ItemGroupRoutes(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = ItemGroupController(dbCubit);
    initialiseApi();
  }
  void initialiseApi() {
    locRoute.get('/get-item-group-list', controller.fetchAllItemGroup);
    locRoute.get('/get-item-group', controller.fetchItemGroup);
    locRoute.post('/create-item-group', controller.createItemGroup);
    locRoute.post('/update-item-group', controller.updateItemGroup);
    locRoute.delete('/delete-item-group', controller.deleteItemGroup);
  }
}
