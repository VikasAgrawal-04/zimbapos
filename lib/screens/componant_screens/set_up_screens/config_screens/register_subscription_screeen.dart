import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/intro_cubits/registrater_state.dart';
import 'package:zimbapos/bloc/screen_cubits/intro_cubits/registrater_subscriber_cubit.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/widgets/textfield/primary_textfield.dart';

class RegisterSubscriptionScreen extends StatefulWidget {
  const RegisterSubscriptionScreen({super.key});

  @override
  State<RegisterSubscriptionScreen> createState() =>
      _RegisterSubscriptionScreenState();
}

class _RegisterSubscriptionScreenState
    extends State<RegisterSubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterSubscriberCubit(),
      child: Scaffold(
        body: OrientationBuilder(
          builder: (context, orientation) =>
              BlocConsumer<RegisterSubscriberCubit, RegisterSubscriberState>(
            listener: (context, state) {},
            builder: (context, state) {
              final subscriberCubit = context.read<RegisterSubscriberCubit>();

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
                      child: Form(
                        key: subscriberCubit.formKey,
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
                              hintText: 'Name',
                              controller: subscriberCubit.nameController,
                              onChanged: (p0) {},
                              validator: nameValidator,
                            ),
                            SizedBox(height: 2.h),
                            PrimaryTextField(
                              hintText: 'Mobile No.',
                              controller: subscriberCubit.mobileController,
                              onChanged: (val) {},
                              validator: validateMobileNumber,
                            ),
                            SizedBox(height: 2.h),
                            PrimaryTextField(
                              hintText: 'Email',
                              controller: subscriberCubit.emailController,
                              onChanged: (val) {},
                              validator: emailValidator,
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
                                    subscriberCubit.saveFn(context),
                                child: (state is LoadingRegistration)
                                    ? const Center(
                                        child: CircularProgressIndicator
                                            .adaptive(),
                                      )
                                    : const Text('Save'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
