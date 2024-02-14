import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_screen_cubit/user_role_cubit_state.dart';

class UserRoleCubit extends Cubit<UserRoleScreenState> {
  UserRoleCubit()
      : super(UserRoleScreenState(screenState: ScreenState.initial)) {
    init();
  }

  init() {
    emit(state.copyWith(screenState: ScreenState.loading));
  }
}
