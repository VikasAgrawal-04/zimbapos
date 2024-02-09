import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../repository/api_repository/api_repo.dart';
import 'item_group_state.dart';

class ItemGroupScreenCubit extends Cubit<ItemGroupScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  ItemGroupScreenCubit() : super(ItemGroupScreenState.initial());

  @override
  Future<void> close() {
    state.props.clear();
    return super.close();
  }

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    // await getItemGroupList();
    emit(state.copyWith(status: Status.success));
  }

  // Future<void> getItemGroupList() async {
  //   try {
  //     final data = await _repo.fetchItemGroup();
  //     data.fold((failure) {
  //       debugPrint(failure.toString());
  //       emit(state.copyWith(itemGroupList: []));
  //     }, (success) {
  //       emit(state.copyWith(itemGroupList: success));
  //     });
  //   } catch (e, s) {
  //     debugPrint(e.toString());
  //     debugPrintStack(stackTrace: s);
  //   }
  // }

  Future<void> createItemGroup(ItemGroupModel item) async {
    try {
      final data = await _repo.createItemGroup(item);
      data.fold((failure) {
        debugPrint(failure.toString());
        EasyLoading.showError(failure.toString());
      }, (success) {
        init();
        EasyLoading.showSuccess(success["data"]);
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> updateItemGroup(ItemGroupModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<ItemGroupModel> updatedList = List.from(state.itemGroupList);
      final index = updatedList
          .indexWhere((element) => element.itemGroupId == item.itemGroupId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(itemGroupList: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateItemGroup(item);
      data.fold((failure) {
        debugPrint(failure.toString());
        EasyLoading.showError(failure.toString());
      }, (success) {
        if (val == false) {
          init();
        }
        EasyLoading.showSuccess(success["data"]);
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> deleteItemGroup(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteItemGroup(id);
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
}
