import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/items_model.dart';
import '../../../models/response_models/item_response_model.dart';
import '../../../repository/api_repository/api_repo.dart';
import 'item_state.dart';

class ItemScreenCubit extends Cubit<ItemScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  ItemScreenCubit() : super(ItemScreenState.initial());

  @override
  Future<void> close() {
    state.props.clear();
    return super.close();
  }

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getItemList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getItemList() async {
    try {
      final data = await _repo.getAllItems();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(itemList: []));
      }, (success) {
        emit(state.copyWith(itemList: success.data));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createItem(ItemsModel item) async {
    log(item.toJson());
    try {
      final data = await _repo.createItem(item);
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

  Future<void> updateItem(ItemsModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<ItemList> updatedList = List.from(state.itemList);
      final index =
          updatedList.indexWhere((element) => element.itemId == item.itemId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(itemList: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateItem(item);
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

  Future<void> deleteItem(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteItem(id);
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

  void onIsAlcoholicChange(bool? val) {
    emit(state.copyWith(isAlcoholic: val));
  }

  void onIsWeightItemChange(bool? val) {
    emit(state.copyWith(isWeightItem: val));
  }

  void onIsOpenItemChange(bool? val) {
    emit(state.copyWith(isOpenItem: val));
  }

  void onTaxIdChange(String? val) {
    emit(state.copyWith(taxId: val));
  }

  void onItemgroupChange(String? val) {
    emit(state.copyWith(itemGroupId: val));
  }

  void onFoodTypeChange(String? val) {
    emit(state.copyWith(foodType: val));
  }

  void clearControllers() {
    emit(ItemScreenState.initial());
    init();
  }

  void fillControllers(ItemsModel item) {
    emit(state.copyWith(
      itemNameController: TextEditingController(text: item.itemName),
      itemRateController: TextEditingController(text: item.itemRate.toString()),
      itemRateWithTaxController:
          TextEditingController(text: item.rateWithTax.toString()),
      barcodeController: TextEditingController(text: item.barcode),
      shortcodeController: TextEditingController(text: item.shortcode),
      hsnController: TextEditingController(text: item.hsnCode),
      imgLinkController: TextEditingController(text: item.imgLink),
      isAlcoholic: item.isAlcohol,
      isOpenItem: item.isOpenItem,
      isWeightItem: item.isWeightItem,
      foodType: item.foodType,
      itemGroupId: item.itemGroupId,
      taxId: item.taxId,
    ));
  }
}
