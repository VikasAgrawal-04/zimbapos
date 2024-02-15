// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'create_user_role_cubit.dart';

enum ScreenState {
  initial,
  loading,
  savebuttonLoading,
  completed,
  error,
}

class CreateUserRoleState {
  ScreenState nameScreen;
  ScreenState permissionScreen;

  CreateUserRoleState({
    required this.nameScreen,
    required this.permissionScreen,
  });

  CreateUserRoleState copyWith({
    ScreenState? nameScreen,
    ScreenState? permissionScreen,
  }) {
    return CreateUserRoleState(
      nameScreen: nameScreen ?? this.nameScreen,
      permissionScreen: permissionScreen ?? this.permissionScreen,
    );
  }
}
