import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers/utils/extensions/screen_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                navigateToProfileScreen(context);
              },
              child: const Text("go to login")),
          TextButton(
              onPressed: () {
                navigateToAreasScreen(context);
              },
              child: const Text("go to areas"))
        ],
      ),
    );
  }

  void navigateToProfileScreen(BuildContext context) {
    GoRouter.of(context).go(AppScreen.loginScreen.path);
  }

  //
  void navigateToAreasScreen(BuildContext context) {
    GoRouter.of(context).go(AppScreen.areasScreen.path);
  }
}
