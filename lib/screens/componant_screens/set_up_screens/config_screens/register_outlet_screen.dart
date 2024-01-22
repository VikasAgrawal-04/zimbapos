import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../helpers/validators.dart';
import '../../../../widgets/textfield/primary_textfield.dart';

class RegisterOutletScreen extends StatefulWidget {
  const RegisterOutletScreen({super.key});

  @override
  State<RegisterOutletScreen> createState() => _RegisterOutletScreenState();
}

class _RegisterOutletScreenState extends State<RegisterOutletScreen> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  saveFn() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilder(
          builder: (context, orientation) {
            return Row(
              children: [
                if (orientation.name == Orientation.landscape.name)
                  SizedBox(
                    width: 40.w,
                    child: Container(
                      color: Colors.blue.shade600,
                    ),
                  ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Please Enter your Subscription Details',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        PrimaryTextField(
                          hintText: 'Outlet ID',
                          controller: controller,
                          onChanged: (p0) {},
                          validator: nameValidator,
                        ),
                        SizedBox(height: 10.h),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 2,
                              fixedSize: Size(15.w, 5.h),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            onPressed: () => saveFn(),
                            child: const Text('Verify'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
