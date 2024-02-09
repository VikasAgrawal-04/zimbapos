import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/rate_sets_model.dart';
import '../../../repository/api_repository/api_repo.dart';
import 'rateset_state.dart';

class RateSetScreenCubit extends Cubit<RateSetScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  RateSetScreenCubit() : super(RateSetScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getRateSetList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getRateSetList() async {
    try {
      final data = await _repo.fetchRateSetList();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(rateSetList: []));
      }, (success) {
        emit(state.copyWith(rateSetList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createRateSet() async {
    try {
      final data = await _repo.createRateSet(
        RateSetsModel(
          ratesetName: state.rateSetNameController.text,
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

  Future<void> updateRateSet(RateSetsModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<RateSetsModel> updatedList = List.from(state.rateSetList);
      final index = updatedList
          .indexWhere((element) => element.ratesetId == item.ratesetId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(rateSetList: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateRateSet(item);
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

  Future<void> deleteRateSet(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteRateSet(id);
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
    emit(RateSetScreenState.initial());
    init();
  }

  void fillControllers(RateSetsModel item) {
    emit(
      state.copyWith(
        rateSetNameController: TextEditingController(text: item.ratesetName),
      ),
    );
  }
}
