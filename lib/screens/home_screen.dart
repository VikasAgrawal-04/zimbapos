import 'dart:io';

import 'package:flutter/material.dart';

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
    runServer();
    super.initState();
  }

  void runServer() async {
    loadingChange();
    server = await createServer();
    print('Server running on ${server.address}:${server.port}');
    serverON = true;
    loadingChange();
    await for (HttpRequest request in server) {
      handleRequest(request);
    }
  }

  void handleRequest(HttpRequest request) {
    print('Request received: ${request.method} ${request.uri.path}');

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
    final address = InternetAddress.loopbackIPv4;
    const port = 4040;
    return await HttpServer.bind(address, port);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: (isLoading)
          ? const Center(
              child: Text('Sever is starting'),
            )
          : (serverON)
              ? Center(
                  child: Text(
                      'Server running on ${server.address.address}:${server.port}'),
                )
              : const Center(
                  child: Text('dead'),
                ),
    );
  }
}
