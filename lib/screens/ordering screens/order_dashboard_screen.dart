import 'package:flutter/material.dart';

class OrderDashboardScreen extends StatefulWidget {
  const OrderDashboardScreen({super.key});

  @override
  State<OrderDashboardScreen> createState() => _OrderDashboardScreenState();
}

class _OrderDashboardScreenState extends State<OrderDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
        ),
      ),
    );
  }
}
