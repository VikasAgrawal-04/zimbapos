import 'dart:io';

import 'package:flutter/material.dart';
import 'package:server/apis/routes/customer_category_routes.dart';
import 'package:server/apis/routes/rateset_routes.dart';
import 'package:server/apis/routes/table_routes.dart';
import 'package:server/apis/routes/workers_routes.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:shelf_router/shelf_router.dart' as route;

class Server {
  final BuildContext context;
  late final route.Router router;
  Server({required this.context}) {
    router = route.Router();
    runServer();
    TablesRoutes(context, router);
    WorkerRoutes(context, router);
    RateSetRoutes(context, router);
    CustomerCategoryRoutes(context, router);
  }

  Future<void> runServer() async {
    final handler = const Pipeline()
        .addMiddleware(logRequests())
        .addMiddleware(corsHeaders())
        .addHandler(router);
    await shelf_io.serve(
      handler,
      InternetAddress.anyIPv4,
      8080,
    );
  }
}
