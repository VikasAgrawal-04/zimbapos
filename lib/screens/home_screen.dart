import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/custom_button.dart';

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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  text: "Rate sets",
                  onPressed: () => context.push(AppScreen.rateSetScreen.path),
                ),
                CustomButton(
                  text: "Tables",
                  onPressed: () => context.push(AppScreen.tableScreen.path),
                ),
                CustomButton(
                  text: "Customer category",
                  onPressed: () =>
                      context.push(AppScreen.customerCategory.path),
                ),
                CustomButton(
                  text: "Category",
                  onPressed: () => context.push(AppScreen.category.path),
                ),
                CustomButton(
                  text: "Areas",
                  onPressed: () => context.push(AppScreen.areasScreen.path),
                ),
                //areas
                CustomButton(
                  text: "Worker overview",
                  onPressed: () =>
                      context.push(AppScreen.workerOverviewScreen.path),
                ),
                //worker screen
                CustomButton(
                  text: "Initial setup screen",
                  onPressed: () =>
                      context.push(AppScreen.initialSetUpScreen.path),
                ),
                //loading screen
                CustomButton(
                  text: "Main group",
                  onPressed: () => context.push(AppScreen.mainGroup.path),
                ),
                CustomButton(
                  text: "Item group",
                  onPressed: () => context.push(AppScreen.itemGroup.path),
                ),
              ],
            ),
          ),
        ));
  }
}
