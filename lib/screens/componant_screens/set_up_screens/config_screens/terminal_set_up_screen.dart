import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/intro_cubits/terminal_setup_cubit/terminal_setup_cubit.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/textfield/primary_textfield.dart';

import '../../../../bloc/global_cubits/device_control_cubit.dart';

class TerminalSetupScreen extends StatefulWidget {
  const TerminalSetupScreen({super.key});

  @override
  State<TerminalSetupScreen> createState() => _TerminalSetupScreenState();
}

class _TerminalSetupScreenState extends State<TerminalSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TerminalSetupCubit(),
      child: Scaffold(
        body:
            BlocConsumer<TerminalSetupCubit, DeviceTerminalConfigurationState>(
          listener: (context, state) {
            if (state.tState == TerminalConfigurationState.completed) {
              context.read<DeviceControlCubit>().getObject();
            }
          },
          builder: (context, state) {
            final cubit = BlocProvider.of<TerminalSetupCubit>(context);
            if (cubit.initialLoaded == true) {
              return PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: cubit.pageController,
                children: const [
                  SetupTerminalTypeWidget(),
                  IpConfigWidget(),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
        ),
      ),
    );
  }
}

class IpConfigWidget extends StatelessWidget {
  const IpConfigWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TerminalSetupCubit>(context);
    return BlocConsumer<TerminalSetupCubit, DeviceTerminalConfigurationState>(
      listener: (context, state) {
        if (state.ipState == IpConfigState.completed &&
            state.tState == TerminalConfigurationState.subTerminal) {
          BlocProvider.of<DeviceControlCubit>(context).getObject();
        }
      },
      builder: (context, state) {
        return Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Form(
              key: cubit.ipFormKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryTextField(
                    hintText: 'Enter IP Address',
                    controller: cubit.ipController,
                    onChanged: (p0) {},
                    validator: (p0) => cubit.validateIP(p0),
                  ),
                  SizedBox(height: 5.h),
                  ElevatedButton(
                    onPressed: () => cubit.saveIPAddress(context),
                    child: const Text('Set Server IP'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SetupTerminalTypeWidget extends StatelessWidget {
  const SetupTerminalTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TerminalSetupCubit>(context);
    return BlocBuilder<TerminalSetupCubit, DeviceTerminalConfigurationState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Select Terminal Type',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: (cubit.terminalType == true)
                              ? Colors.green
                              : null,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          fixedSize: Size(15.w, 10.w)),
                      onPressed: () => cubit.changeTerminalType(true),
                      child: Text(
                        'Main Server',
                        style: TextStyle(
                          color: (cubit.terminalType == true)
                              ? Colors.white
                              : null,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            (cubit.terminalType == false) ? Colors.green : null,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fixedSize: Size(15.w, 10.w),
                      ),
                      onPressed: () => cubit.changeTerminalType(false),
                      child: Text(
                        'Sub Server',
                        style: TextStyle(
                          color: (cubit.terminalType == false)
                              ? Colors.white
                              : null,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    fixedSize: Size(15.w, 5.w),
                  ),
                  onPressed: () => cubit.saveFn(context),
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
