import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_cubit_state.dart';

import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/services/user_management_service/user_role_service/user_role_service.dart';
import 'package:zimbapos/services/user_management_service/user_role_service/user_role_service_impl.dart';

class UserRoleCubit extends Cubit<UserRoleScreenState> {
  UserRoleCubit()
      : super(UserRoleScreenState(screenState: ScreenState.initial)) {
    init();
  }
  final UserRoleService _userRoleService = UserRoleServiceImpl();
  late String errorMessage;
  late List<UserRolesModel> modelList;

  init() async {
    emit(state.copyWith(screenState: ScreenState.loading));
    final response = await _userRoleService.getUserRoles();
    response.fold((l) {
      errorMessage = l.toString();
      emit(state.copyWith(screenState: ScreenState.error));
    }, (r) {
      modelList = r;
      emit(state.copyWith(screenState: ScreenState.completed));
    });
  }
}
