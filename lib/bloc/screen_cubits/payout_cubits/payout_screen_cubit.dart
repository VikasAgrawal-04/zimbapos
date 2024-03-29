import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../models/global_models/pay_out_model.dart';
import 'payout_screen_state.dart';

class PayOutScreenCubit extends Cubit<PayOutScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  PayOutScreenCubit() : super(PayOutScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getPayOutList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getPayOutList() async {
    try {
      final data = await _repo.fetchPayOutList();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(payOutList: []));
      }, (success) {
        emit(state.copyWith(payOutList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createPayOut(PayOutModel data) async {
    try {
      data.outletId = await Helpers.getOutletId();
      final success = await _repo.createPayOut(data);
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

  // Future<void> updateArea(PayOutModel data, {bool? val}) async {
  //   //For State Management & Instant Reflection
  //   if (val != null) {
  //     List<PayOutModel> updatedList = List.from(state.areaList);
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
    emit(PayOutScreenState.initial());
    init();
  }

  void fillControllers(PayOutModel item) {
    emit(
      state.copyWith(
        payOutAmountController:
            TextEditingController(text: item.amount.toString()),
        reasonController: TextEditingController(text: item.reason.toString()),
      ),
    );
  }
}
