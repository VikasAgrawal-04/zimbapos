import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import '../../../../bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_cubit_cubit.dart';
import '../../../../bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_cubit_state.dart';

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
      child: BlocBuilder<UserRoleCubit, UserRoleScreenState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<UserRoleCubit>(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text('User Roles'),
              actions: [
                if (state.screenState == ScreenState.completed)
                  TextButton.icon(
                    onPressed: () =>
                        context.push(AppScreen.createUserRoleScreen.path),
                    icon: const Icon(Icons.add),
                    label: const Text('Create User Role'),
                  ),
              ],
            ),
            body: switch (state.screenState) {
              ScreenState.initial => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ScreenState.loading => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ScreenState.error => Center(
                  child: Text(cubit.errorMessage),
                ),
              ScreenState.completed => ListView.builder(
                  itemCount: cubit.modelList.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(cubit.modelList[index].roleName ?? ''),
                  ),
                ),
            },
          );
        },
      ),
    );
  }
}
