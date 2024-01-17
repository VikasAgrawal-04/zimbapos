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
  int activeConnections = 0;
  Server({required this.context}) {
    router = route.Router();
    runServer();
    TablesRoutes(context, router);
    WorkerRoutes(context, router);
    RateSetRoutes(context, router);
    CustomerCategoryRoutes(context, router);
  }

  Future<void> runServer() async {
    if (!(await isServerRunning('0.0.0.0', 8080))) {
      final handler = const Pipeline()
          .addMiddleware(logRequests())
          .addMiddleware(corsHeaders())
          .addHandler((Request request) async {
        // Increment the counter when a new connection is received
        activeConnections++;
        debugPrint('Connected devices: $activeConnections');

        // Pass the request through the router for handling routes
        var response = await router(request);

        // Decrement the counter when the response is sent
        activeConnections--;
        debugPrint('Connected devices: $activeConnections');

        return response;
      });

      await shelf_io.serve(
        handler,
        InternetAddress.anyIPv4,
        8080,
      );
    }
  }

  Future<bool> isServerRunning(String address, int port) async {
    try {
      await Socket.connect(address, port);
      return true;
    } catch (_) {
      return false;
    }
  }
}
