import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/intro_cubits/cubit/outlet_register_cubit.dart';
import '../../../../../helpers/validators.dart';
import '../../../../../widgets/textfield/primary_textfield.dart';

class RegisterOutletScreen extends StatefulWidget {
  const RegisterOutletScreen({super.key});

  @override
  State<RegisterOutletScreen> createState() => _RegisterOutletScreenState();
}

class _RegisterOutletScreenState extends State<RegisterOutletScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OutletRegisterCubit, OutletRegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          final subCubit = BlocProvider.of<OutletRegisterCubit>(context);
          return Scaffold(
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
                              controller: subCubit.outletIdController,
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
                                onPressed: () =>
                                    subCubit.saveOutletIdFn(context),
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
          );
        });
  }
}
