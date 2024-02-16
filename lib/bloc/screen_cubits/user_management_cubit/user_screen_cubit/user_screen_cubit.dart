import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/user_models/user_model.dart';

part 'user_screen_state.dart';

class UserScreenCubit extends Cubit<UserScreenState> {
  UserScreenCubit() : super(UserScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    emit(state.copyWith(status: Status.success));
  }
}
