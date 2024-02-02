import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/intro_cubits/terminal_setup_cubit/terminal_setup_cubit.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/routers/utils/go_router_functions.dart';

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
        body: BlocConsumer<TerminalSetupCubit, TerminalSetupState>(
          listener: (context, state) {
            if (state is TerminalErrorState) {
              EasyLoading.showToast(state.errorMessage);
            }
            if (state is TerminalSetUpComplete) {
              removeAllAndPush(context, AppScreen.homeScreen.path);
            }
          },
          builder: (context, state) {
            final cubit = BlocProvider.of<TerminalSetupCubit>(context);
            if (state is TerminalSetupInit) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }

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
                          onPressed: () => cubit.changeTerminal(true),
                          child: Text('Main Server',
                              style: TextStyle(
                                color: (cubit.terminalType == true)
                                    ? Colors.white
                                    : null,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: (cubit.terminalType == false)
                                ? Colors.green
                                : null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            fixedSize: Size(15.w, 10.w),
                          ),
                          onPressed: () => cubit.changeTerminal(false),
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
                      onPressed: () => cubit.saveFn(),
                      child: const Text('Save'),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
