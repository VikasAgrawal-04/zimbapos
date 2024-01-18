import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import '../../../bloc/screen_cubits/intro_cubits/cubit/outlet_register_cubit.dart';
import 'config_screens/register_outlet_screen.dart';
import 'config_screens/register_subscription_screeen.dart';

class OutLetDataSetUpScreen extends StatefulWidget {
  const OutLetDataSetUpScreen({super.key});

  @override
  State<OutLetDataSetUpScreen> createState() => _OutLetDataSetUpScreenState();
}

class _OutLetDataSetUpScreenState extends State<OutLetDataSetUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          OutletRegisterCubit(databaseCubit: context.read<DatabaseCubit>()),
      child: BlocConsumer<OutletRegisterCubit, OutletRegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = BlocProvider.of<OutletRegisterCubit>(context);
          return PageView(
            controller: cubit.pageController,
            children: const [
              RegisterSubscriptionScreen(),
              RegisterOutletScreen(),
            ],
          );
        },
      ),
    );
  }
}
