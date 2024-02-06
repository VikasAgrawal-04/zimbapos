import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/intro_cubits/regiser_terminal_cubit/register_terminal_cubit.dart';

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
        child: BlocConsumer<RegisterTerminalCubit, RegisterTerminalState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is RegisterTerminalInitial) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return const Center(
              child: Text('Loading'),
            );
          },
        ),
      ),
    );
  }
}
