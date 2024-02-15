import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';
import 'package:zimbapos/global/utils/screen_function_mapping.dart';
import 'package:zimbapos/models/global_models/user_role_screen_function_model.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/services/user_management_service/user_role_service/user_role_service.dart';
import 'package:zimbapos/services/user_management_service/user_role_service/user_role_service_impl.dart';
part 'create_user_role_state.dart';

class CreateUserRoleCubit extends Cubit<CreateUserRoleState> {
  CreateUserRoleCubit()
      : super(CreateUserRoleState(
          nameScreen: ScreenState.initial,
          permissionScreen: ScreenState.initial,
        )) {
    formKey = GlobalKey<FormState>();
    roleName = TextEditingController();
    pageController = PageController();
    sfmapp = sfMapping;
    // generateList();
  }
  final UserRoleService _userRoleService = UserRoleServiceImpl();
  late final GlobalKey<FormState> formKey;
  late final PageController pageController;
  late String? outletId;
  late String message;

  late final TextEditingController roleName;
  late final UserRolesModel userRoleModel;
  late List<SFMapping> sfmapp;
  late List<UserRoleScreenFunctionModel> userRoleScreenFunctionList;

  generateList() async {
    outletId = '';
    log('Running');
    userRoleScreenFunctionList = [];
    print(sfmapp.length);
    for (var element in sfmapp) {
      print('Running');
      userRoleScreenFunctionList.add(UserRoleScreenFunctionModel(
        outletId: outletId ?? '',
        roleId: userRoleModel.roleId ?? '',
        canView: element.canView,
        canChange: element.canEdit,
        screenFunctionId: element.id,
        screenFunctionName: element.functionName,
      ));
    }
    print(userRoleScreenFunctionList.length);

    log(userRoleScreenFunctionList.map((e) => e.toString()).toString());
  }

  changeCanView(bool value, UserRoleScreenFunctionModel model) {
    // emit(state.copyWith());
    final index = userRoleScreenFunctionList.indexWhere(
        (element) => element.screenFunctionId == model.screenFunctionId);
    userRoleScreenFunctionList[index].canView = value;
    emit(state.copyWith());
    print('function Runnng');
  }

  refresh() {
    emit(state.copyWith());
  }

  saveRoleFn() async {
    if (formKey.currentState!.validate()) {
      try {
        final MySecureStorage storage = MySecureStorage();
        outletId = await storage.getOutletID();

        final response = await _userRoleService.createUserRole(
          roleName: roleName.text,
          outletId: outletId ?? '',
        );
        response.fold(
          (l) {
            message = l.toString();
            EasyLoading.showToast(message);
          },
          (r) {
            userRoleModel = r;
            pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Easing.linear,
            );
            emit(state.copyWith(nameScreen: ScreenState.completed));
            generateList();
          },
        );
      } catch (e) {
        print(e);
      }
    }
  }

  saveAllPermission() async {
    try {
      print('rinn');
      emit(state.copyWith(permissionScreen: ScreenState.savebuttonLoading));
      for (var elemnt in userRoleScreenFunctionList) {
        final response =
            await _userRoleService.createScreenFunction(model: elemnt);
        response.fold((l) {
          print(l);
        }, (r) {
          // print(r.toString());
        });
      }
    } catch (e) {
      print(e);
    }
  }

  saveUserPermission() async {
    emit(state.copyWith(permissionScreen: ScreenState.savebuttonLoading));
  }
}
