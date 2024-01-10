import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers/utils/extensions/screen_name.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          TextButton(
              onPressed: () {
                navigateToProfileScreen(context);
              },
              child: const Text("Complete order"))
        ],
      ),
    );
  }

  //
  void navigateToProfileScreen(BuildContext context) {
    GoRouter.of(context).go(AppScreen.homeScreen.path);
  }
}
