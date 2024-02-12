import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_state.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/tax_model.dart';
import '../../../repository/api_repository/api_repo.dart';

class TaxScreenCubit extends Cubit<TaxScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  TaxScreenCubit() : super(TaxScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getTaxList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getTaxList() async {
    try {
      final data = await _repo.fetchTaxList();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(taxList: []));
      }, (success) {
        emit(state.copyWith(taxList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createTax() async {
    try {
      final data = await _repo.createTax(
        TaxModel(
          taxName: state.taxNameController.text,
          taxPercent: double.parse(state.taxPercentController.text),
          taxType: state.taxType,
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

  Future<void> updateTax(TaxModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<TaxModel> updatedList = List.from(state.taxList);
      final index =
          updatedList.indexWhere((element) => element.taxId == item.taxId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(taxList: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateTax(item);
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

  Future<void> deleteTax(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteTax(id);
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

  void onTaxTypeChange(String? val) {
    emit(state.copyWith(taxType: val));
  }

  void clearControllers() {
    emit(TaxScreenState.initial());
    init();
  }

  void fillControllers(TaxModel item) {
    emit(
      state.copyWith(
        taxNameController: TextEditingController(text: item.taxName),
        taxPercentController:
            TextEditingController(text: item.taxPercent.toString()),
        taxType: item.taxType,
      ),
    );
  }
}
