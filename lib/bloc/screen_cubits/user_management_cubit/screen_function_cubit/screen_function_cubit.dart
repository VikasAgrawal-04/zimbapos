import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/screen_function_cubit/screen_function_state.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

class ScreenFunctionCubit extends Cubit<ScreenFunctionState> {
  final ApiRepo _repo = ApiRepoImpl();
  ScreenFunctionCubit() : super(ScreenFunctionState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getSFList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getSFList() async {
    final res = await _repo.getAllSF();
    res.fold((failure) {
      debugPrint("Failure In GetAllUsers ${failure.toString()}");
    }, (success) {
      emit(state.copyWith(sfList: success));
    });
  }
}
