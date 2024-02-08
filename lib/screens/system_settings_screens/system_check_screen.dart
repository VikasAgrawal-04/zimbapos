import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SystemCheckScreen extends StatefulWidget {
  const SystemCheckScreen({super.key});

  @override
  State<SystemCheckScreen> createState() => _SystemCheckScreenState();
}

class _SystemCheckScreenState extends State<SystemCheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Loading Configurations'),
            SizedBox(width: 0.5.w),
            const CircularProgressIndicator.adaptive()
          ],
        ),
      ),
    );
  }
}
