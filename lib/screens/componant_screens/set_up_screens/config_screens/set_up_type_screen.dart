import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SetUpTypeScreen extends StatefulWidget {
  const SetUpTypeScreen({super.key});

  @override
  State<SetUpTypeScreen> createState() => _SetUpTypeScreenState();
}

class _SetUpTypeScreenState extends State<SetUpTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Scaffold(
        body: Row(
          children: [
            if (orientation.name == Orientation.landscape.name)
              SizedBox(
                width: 40.w,
                child: Container(
                  color: Colors.blue.shade600,
                ),
              ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('How would you like to set up your System?',
                      style: TextStyle(fontSize: 16.sp)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            fixedSize: Size(20.w, 10.w),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          onPressed: () {},
                          child: const Text('Offline'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            fixedSize: Size(20.w, 10.w),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          onPressed: () {},
                          child: const Text('Hybrid'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      fixedSize: Size(15.w, 5.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
