import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

class AreasScreenCubit extends Cubit<AreasScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  AreasScreenCubit() : super(AreasScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getAreaList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getAreaList() async {
    try {
      final data = await _repo.getAreas();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(areaList: []));
      }, (success) {
        emit(state.copyWith(areaList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createArea(AreasModel data) async {
    try {
      data.outletId = await Helpers.getOutletId();
      final success = await _repo.createArea(data);
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

  Future<void> deleteArea(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteArea(id);
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

  Future<void> updateArea(AreasModel data, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<AreasModel> updatedList = List.from(state.areaList);
      final index =
          updatedList.indexWhere((element) => element.areaId == data.areaId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(areaList: updatedList));
      data.isActive = val;
    }

    //For API Calls
    try {
      final res = await _repo.updateArea(data);
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

  void onRateSetChange(String? val) {
    emit(state.copyWith(selectedRateSetId: val));
  }

  void clearControllers() {
    emit(AreasScreenState.initial());
    init();
  }

  void fillControllers(AreasModel item) {
    emit(
      state.copyWith(
        areaNameController: TextEditingController(text: item.areaName),
        extraChargePercentController:
            TextEditingController(text: item.extraChargePercent.toString()),
        selectedRateSetId: item.rateSetId,
      ),
    );
  }
}
