import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  bool serverON = false;
  late HttpServer server;

  loadingChange() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // await runServer();
    });
  }

  Future<void> runServer() async {
    loadingChange();
    server = await createServer();
    debugPrint('Server running on ${server.address}:${server.port}');
    serverON = true;
    loadingChange();
    await for (HttpRequest request in server) {
      handleRequest(request);
    }
  }

  void handleRequest(HttpRequest request) {
    request.response.headers.add('Access-Control-Allow-Origin', '*');
    request.response.headers.add('Content-Type', 'text/plain');
    debugPrint('Request received: ${request.method} ${request.uri.path}');

    if (request.method == 'GET' && request.uri.path == '/') {
      // Handle your GET request logic here
      request.response
        ..write('Server Running from ZimbaPOS!')
        ..close();
    } else {
      request.response
        ..statusCode = HttpStatus.notFound
        ..write('Not Found')
        ..close();
    }
  }

  Future<HttpServer> createServer() async {
    final address = InternetAddress.anyIPv4;
    const port = 8080;
    return await HttpServer.bind(address, port);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: GridView(
        padding: EdgeInsets.all(5.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5.w,
          crossAxisSpacing: 5.w,
        ),
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            onPressed: () => context.push(AppScreen.rateSetScreen.path),
            child: const Text('Rate Sets'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
            ),
            onPressed: () => context.push(AppScreen.tableScreen.path),
            child: const Text('Tables'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
            ),
            onPressed: () => context.push(AppScreen.workerOverviewScreen.path),
            child: const Text('Worker Overview'),
          ),
        ],
      ),
    );
  }
}
