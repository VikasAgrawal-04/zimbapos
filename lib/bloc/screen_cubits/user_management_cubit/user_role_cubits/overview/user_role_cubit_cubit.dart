import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_state.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
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

  Future<void> createUserRole() async {
    try {
      final data = await _repo.createUserRole(
        UserRolesModel(
          roleName: state.roleName.text,
        ),
      );
      data.fold((failure) {
        debugPrint(failure.toString());
        EasyLoading.showError(failure.toString());
      }, (success) {
        clearControllers();
        EasyLoading.showSuccess(success["data"]);
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> updateUserRole(UserRolesModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<UserRolesModel> updatedList = List.from(state.userRoles);
      final index =
          updatedList.indexWhere((element) => element.roleId == item.roleId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(userRoles: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateUserRole(item);
      data.fold((failure) {
        debugPrint(failure.toString());
        EasyLoading.showError(failure.toString());
      }, (success) async {
        if (val == null) await init();
        EasyLoading.showSuccess(success["data"]);
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> deleteUserRole(String userRoleId) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteUserRole(userRoleId);
      res.fold((failure) {
        debugPrint(failure.toString());
        EasyLoading.showError(failure.toString());
      }, (success) {
        init();
        EasyLoading.showSuccess(success['data']);
        debugPrint(success.toString());
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  void clearControllers() {
    emit(UserRoleScreenState.initial());
    init();
  }

  void fillControllers(UserRolesModel item) {
    emit(
      state.copyWith(
        roleName: TextEditingController(text: item.roleName.toString()),
      ),
    );
  }
}
