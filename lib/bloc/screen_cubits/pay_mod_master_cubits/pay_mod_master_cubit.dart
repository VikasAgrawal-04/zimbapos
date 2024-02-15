import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/models/global_models/pay_mod_master_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../repository/api_repository/api_repo.dart';
import 'pay_mod_master_state.dart';

class PayModMasterScreenCubit extends Cubit<PayModMasterScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  PayModMasterScreenCubit() : super(PayModMasterScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getPayModMasterList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getPayModMasterList() async {
    try {
      final data = await _repo.fetchPayModMasterList();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(payModMasterList: []));
      }, (success) {
        emit(state.copyWith(payModMasterList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createPayModMaster() async {
    try {
      final data = await _repo.createPayModMaster(
        PayModMasterModel(
          payTypeName: state.payTypeController.text.isEmpty
              ? state.paytypeName
              : state.payTypeController.text,
        ),
      );
      data.fold((failure) {
        debugPrint(failure.toString());
        EasyLoading.showError(failure.toString());
      }, (success) {
        // clearControllers();
        init();
        EasyLoading.showSuccess(success["data"]);
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> updatePayModMaster(PayModMasterModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<PayModMasterModel> updatedList = List.from(state.payModMasterList);
      final index =
          updatedList.indexWhere((element) => element.payCode == item.payCode);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(payModMasterList: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updatePayModMaster(item);
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

  Future<void> deletePayModMaster(String payCode) async {
    try {
      EasyLoading.show();
      final res = await _repo.deletePayModMaster(payCode);
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

  void onPayModMasterChange(String? val) {
    emit(state.copyWith(paytypeName: val));
    if (val == "Others") {
      emit(state.copyWith(isOthers: true));
    }
  }

  void clearControllers() {
    emit(PayModMasterScreenState.initial());
    init();
  }

  // void fillControllers(PayModMasterModel item) {
  //   emit(
  //     state.copyWith(
  //       payCodeController: TextEditingController(text: item.payCode),
  //       payTypeNameController: TextEditingController(text: item.payTypeName),
  //     ),
  //   );
  // }
}
