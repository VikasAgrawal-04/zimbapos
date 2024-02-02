import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/cubits/initial_config_cubit/initial_config_cubit.dart';

import 'package:zimbapos/bloc/screen_cubits/intro_cubits/terminal_setup_cubit/terminal_setup_cubit.dart';

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
          listener: (context, state) {},
          builder: (context, state) {
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
                  const Text('Select your Terminal Type'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Main Server'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Sub Server'),
                        ),
                      ),
                    ],
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
