import 'dart:io';

import 'package:flutter/material.dart';
import 'package:server/apis/table_apis.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as route;

class Server {
  final BuildContext context;
  late final route.Router router;
  Server({required this.context}) {
    router = route.Router();
    runServer();
    TablesApi(context, router);
  }

  Future<void> runServer() async {
    final handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(router);
    await shelf_io.serve(handler, InternetAddress.anyIPv4, 8080);
  }
}
