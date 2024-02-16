import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_state.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

class UserRoleCubit extends Cubit<UserRoleScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  UserRoleCubit() : super(UserRoleScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getAllUserRoles();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getAllUserRoles() async {
    final res = await _repo.getAllUserRoles();
    res.fold((failure) {
      debugPrint("Failure In GetAllUsers ${failure.toString()}");
    }, (success) {
      emit(state.copyWith(userRoles: success));
    });
  }
}
