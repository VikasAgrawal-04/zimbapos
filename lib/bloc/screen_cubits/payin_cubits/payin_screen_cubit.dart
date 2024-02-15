import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../models/global_models/pay_in_model.dart';
import 'payin_screen_state.dart';

class PayInScreenCubit extends Cubit<PayInScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  PayInScreenCubit() : super(PayInScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getPayInList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getPayInList() async {
    try {
      final data = await _repo.fetchPayInList();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(payInList: []));
      }, (success) {
        emit(state.copyWith(payInList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createPayIn(PayInModel data) async {
    try {
      data.outletId = await Helpers.getOutletId();
      final success = await _repo.createPayIn(data);
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

  // Future<void> deleteArea(String id) async {
  //   try {
  //     EasyLoading.show();
  //     final res = await _repo.deleteArea(id);
  //     res.fold((failure) {
  //       debugPrint(failure.toString());
  //       EasyLoading.showError(failure.toString());
  //     }, (success) {
  //       init();
  //       EasyLoading.showSuccess(success['data']);
  //       debugPrint(success.toString());
  //     });
  //   } catch (e, s) {
  //     debugPrint(e.toString());
  //     debugPrintStack(stackTrace: s);
  //   }
  // }

  // Future<void> updateArea(PayInModel data, {bool? val}) async {
  //   //For State Management & Instant Reflection
  //   if (val != null) {
  //     List<PayInModel> updatedList = List.from(state.areaList);
  //     final index =
  //         updatedList.indexWhere((element) => element.areaId == data.areaId);
  //     updatedList[index] = updatedList[index].copyWith(isActive: val);
  //     emit(state.copyWith(areaList: updatedList));
  //     data.isActive = val;
  //   }

  //   //For API Calls
  //   try {
  //     final res = await _repo.updateArea(data);
  //     res.fold((failure) {
  //       debugPrint(failure.toString());
  //       EasyLoading.showError(failure.toString());
  //     }, (success) async {
  //       if (val == null) await init();
  //       EasyLoading.showSuccess(success['data']);
  //       debugPrint(success.toString());
  //     });
  //   } catch (e, s) {
  //     debugPrint(e.toString());
  //     debugPrintStack(stackTrace: s);
  //   }
  // }

  void clearControllers() {
    emit(PayInScreenState.initial());
    init();
  }

  void fillControllers(PayInModel item) {
    emit(
      state.copyWith(
        amountController: TextEditingController(text: item.amount.toString()),
        reasonController: TextEditingController(text: item.reason.toString()),
      ),
    );
  }
}
