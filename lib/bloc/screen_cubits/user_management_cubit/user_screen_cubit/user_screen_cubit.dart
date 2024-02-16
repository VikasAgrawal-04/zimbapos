import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/user_models/user_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

part 'user_screen_state.dart';

class UserScreenCubit extends Cubit<UserScreenState> {
  final ApiRepo _repo = ApiRepoImpl();
  UserScreenCubit() : super(UserScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getAllUsers();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getAllUsers() async {
    final res = await _repo.getAllUsers();
    res.fold((failure) {
      debugPrint("Failure In GetAllUsers ${failure.toString()}");
    }, (success) {
      emit(state.copyWith(users: success));
    });
  }
}
