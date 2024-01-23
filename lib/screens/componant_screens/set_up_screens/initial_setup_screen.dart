import 'package:flutter/material.dart';
import 'package:zimbapos/models/user_models/system_config_model.dart';
import 'package:zimbapos/screens/componant_screens/set_up_screens/config_screens/intro_screen.dart';
import 'package:zimbapos/screens/componant_screens/set_up_screens/config_screens/set_up_type_screen.dart';

class InitialSetUpScreen extends StatefulWidget {
  const InitialSetUpScreen({super.key});

  @override
  State<InitialSetUpScreen> createState() => _InitialSetUpScreenState();
}

class _InitialSetUpScreenState extends State<InitialSetUpScreen> {
  late final PageController pageController;
  late SystemConfigModel systemConfigModel;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    systemConfigModel = SystemConfigModel(
      hybrid: true,
      mainServer: true,
      ipAddress: '',
      port: '',
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: pageController,
          children: [
            const SetUpTypeScreen(),
            IntroScreen(controller: pageController),
          ],
        ),
      ),
    );
  }
}
