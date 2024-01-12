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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () => context.push(AppScreen.rateSetScreen.path),
                child: const Text('Rate Sets'),
              ),
              SizedBox(height: 2.h),
              ElevatedButton(
                onPressed: () => context.push(AppScreen.tableScreen.path),
                child: const Text('Tables'),
              ),
              SizedBox(height: 2.h),
              ElevatedButton(
                onPressed: () => context.push(AppScreen.customerCategory.path),
                child: const Text('Customer Category'),
              ),
              SizedBox(height: 2.h),
              ElevatedButton(
                onPressed: () => context.push(AppScreen.category.path),
                child: const Text('Category'),
              ),
              //areas
              ElevatedButton(
                onPressed: () => context.push(AppScreen.areasScreen.path),
                child: const Text('Areas'),
              ),
            ],
          ),
        ));
  }
}
