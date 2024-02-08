import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/mian_group_state.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../repository/api_repository/api_repo.dart';

class MainGroupScreenCubit extends Cubit<MainGroupScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  MainGroupScreenCubit() : super(MainGroupScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getMainGroup();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getMainGroup() async {
    try {
      final data = await _repo.fetchMainGroup();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(mainGroupList: []));
      }, (success) {
        emit(state.copyWith(mainGroupList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createMainGroup() async {
    try {
      final data = await _repo.createMainGroup(
        MainGroupModel(
          mainGroupName: state.mainGroupNameController.text,
          categoryId: state.catId,
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

  Future<void> updateMainGroup(MainGroupModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<MainGroupModel> updatedList = List.from(state.mainGroupList);
      final index = updatedList
          .indexWhere((element) => element.mainGroupId == item.mainGroupId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(mainGroupList: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateMainGroup(item);
      data.fold((failure) {
        debugPrint(failure.toString());
        EasyLoading.showError(failure.toString());
      }, (success) {
        if (val == null) {
          init();
        }
        EasyLoading.showSuccess(success["data"]);
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> deleteMainGroup(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteMainGroup(id);
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

  void onCategoryChange(String? val) {
    emit(state.copyWith(catId: val));
  }

  void clearControllers() {
    emit(MainGroupScreenState.initial());
    init();
  }

  void fillControllers(MainGroupModel item) {
    emit(
      state.copyWith(
        mainGroupNameController:
            TextEditingController(text: item.mainGroupName),
        catId: item.categoryId,
      ),
    );
  }
}
