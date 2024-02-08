import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/intro_cubits/regiser_terminal_cubit/register_terminal_cubit.dart';
import 'package:zimbapos/widgets/textfield/primary_textfield.dart';

class TerminalConfigureScreen extends StatefulWidget {
  const TerminalConfigureScreen({super.key});

  @override
  State<TerminalConfigureScreen> createState() =>
      _TerminalConfigureScreenState();
}

class _TerminalConfigureScreenState extends State<TerminalConfigureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terminal Set'),
      ),
      body: BlocProvider(
        create: (context) => RegisterTerminalCubit(),
        child: BlocConsumer<RegisterTerminalCubit, RegiState>(
          listener: (context, state) {},
          builder: (context, state) {
            final cubit = BlocProvider.of<RegisterTerminalCubit>(context);
            if (state.screenState == ScreenState.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }

            if (state.screenState == ScreenState.listRecieved) {
              return Column(
                children: [
                  Text(
                    'Please Select the Terminal for Registering device',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Expanded(
                    child: (cubit.terminalList.isEmpty)
                        ? const Center(
                            child: Text('No Terminal available'),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: GridView.builder(
                                    itemCount: cubit.terminalList.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 2.w,
                                      crossAxisSpacing: 2.w,
                                    ),
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                      onTap: () => cubit.selectTerminal(cubit
                                              .terminalList[index].terminalId ??
                                          -1),
                                      child: Card(
                                        child: Container(
                                          decoration: (cubit.terminalList[index]
                                                      .terminalId ==
                                                  cubit.terminalId)
                                              ? BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                    width: 1,
                                                  ))
                                              : null,
                                          child: Center(
                                            child: Text(
                                              'Terminal ID: ${cubit.terminalList[index].terminalId.toString()}',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () => cubit.saveTerminalID(),
                                  child:
                                      (state.state == RegistrationState.loading)
                                          ? const Center(
                                              child: CircularProgressIndicator
                                                  .adaptive(),
                                            )
                                          : const Center(
                                              child: Text('Save Terminal')),
                                )
                              ],
                            ),
                          ),
                  ),
                ],
              );
            }
            return OrientationBuilder(
              builder: (context, orientation) => SingleChildScrollView(
                padding: (orientation == Orientation.landscape)
                    ? EdgeInsets.symmetric(horizontal: 15.w)
                    : const EdgeInsets.symmetric(),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    PrimaryTextField(
                      hintText: 'Terminal ID',
                      controller: cubit.controller,
                      onChanged: (p0) {},
                    ),
                    SizedBox(height: 10.h),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Save'),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
