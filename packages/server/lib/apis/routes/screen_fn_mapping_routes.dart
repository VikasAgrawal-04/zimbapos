import 'package:flutter/material.dart';
import 'package:server/apis/controller/screen_fn_mapping_controller.dart';
import 'package:shelf_router/shelf_router.dart' as route;
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/global/utils/screen_function_mapping_raw.dart';
import 'package:zimbapos/repository/isar_service.dart';

class SFMappingRoute {
  final BuildContext context;
  final route.Router locRoute;
  late final IsarService dbCubit;
  late final SFMappingController controller;
  SFMappingRoute(this.context, this.locRoute) {
    dbCubit = DatabaseCubit.dbFrom(context);
    controller = SFMappingController(dbCubit);
    initialiseApi();
    createSfMapping(dbCubit);
  }

  void initialiseApi() {
    locRoute.get('/get-sf-mapping', controller.fetchAllSFMapping);
    locRoute.post('/create-sf-mapping', controller.createSFMapping);
  }

  Future<void> createSfMapping(IsarService db) async {
    await db.sfMappingRepository.createSFMapping(sfMapping);
  }
}
