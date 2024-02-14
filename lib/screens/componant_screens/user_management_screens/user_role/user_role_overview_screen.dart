import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_screen_cubit/user_role_cubit_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_screen_cubit/user_role_cubit_state.dart';

class UserRoleOverviewScreen extends StatefulWidget {
  const UserRoleOverviewScreen({super.key});

  @override
  State<UserRoleOverviewScreen> createState() => _UserRoleOverviewScreenState();
}

class _UserRoleOverviewScreenState extends State<UserRoleOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserRoleCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('User Roles'),
        ),
        body: BlocBuilder<UserRoleCubit, UserRoleScreenState>(
          builder: (context, state) {
            if (state.screenState == ScreenState.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return SingleChildScrollView(
              child: Column(
                children: [],
              ),
            );
          },
        ),
      ),
    );
  }
}
