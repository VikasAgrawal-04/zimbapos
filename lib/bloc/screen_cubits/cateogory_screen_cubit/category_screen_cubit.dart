import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_state.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

class CategoryScreenCubit extends Cubit<CategoryScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  CategoryScreenCubit() : super(CategoryScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getCategories();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getCategories() async {
    try {
      final data = await _repo.fetchCategories();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(categories: []));
      }, (success) {
        emit(state.copyWith(categories: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createCategory(CategoryModel data) async {
    try {
      final success = await _repo.createCategory(data);
      success.fold((failure) {
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

  Future<void> deleteCategory(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteCategory(id);
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

  Future<void> updateCategory(CategoryModel data, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<CategoryModel> updatedList = List.from(state.categories);
      final index = updatedList
          .indexWhere((element) => element.categoryid == data.categoryid);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(categories: updatedList));
      data.isActive = val;
    }

    //For API Calls
    try {
      final res = await _repo.updateCategory(data);
      res.fold((failure) {
        debugPrint(failure.toString());
        EasyLoading.showError(failure.toString());
      }, (success) async {
        if (val == null) await init();
        EasyLoading.showSuccess(success['data']);
        debugPrint(success.toString());
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  void clearControllers() {
    emit(CategoryScreenState.initial());
    init();
  }

  void fillControllers(CategoryModel item) {
    emit(
      state.copyWith(
        categoryName: TextEditingController(text: item.categoryName),
      ),
    );
  }
}
