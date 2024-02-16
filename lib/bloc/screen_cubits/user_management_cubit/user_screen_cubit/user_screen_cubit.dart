import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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

  Future<void> createUser() async {
    try {
      final data = await _repo.createUser(
        UserModel(
          fullname: state.userFullNameController.text,
          mobile: state.userMobileController.text,
          logInId: state.userLogInIdController.text,
          password: state.userPasswordController.text,
          email: state.userEmailController.text,
          maximumDiscount: double.parse(state.userMaxDiscountController.text),
          userRoleId: state.userRoleType,
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

  Future<void> updateUser(UserModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<UserModel> updatedList = List.from(state.users);
      final index =
          updatedList.indexWhere((element) => element.userID == item.userID);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(users: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateUser(item);
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

  Future<void> deleteUser(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteUser(id);
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

  void onUserRoleTypeChange(String? val) {
    emit(state.copyWith(userRoleType: val));
  }

  void clearControllers() {
    emit(UserScreenState.initial());
    init();
  }

  void fillControllers(UserModel item) {
    emit(
      state.copyWith(
        userFullNameController: TextEditingController(text: item.fullname),
        userMobileController: TextEditingController(text: item.mobile),
        userPasswordController: TextEditingController(text: item.password),
        userLogInIdController: TextEditingController(text: item.logInId),
        userEmailController: TextEditingController(text: item.email),
        userMaxDiscountController:
            TextEditingController(text: item.maximumDiscount.toString()),
        userRoleType: item.userRoleId,
      ),
    );
  }
}
