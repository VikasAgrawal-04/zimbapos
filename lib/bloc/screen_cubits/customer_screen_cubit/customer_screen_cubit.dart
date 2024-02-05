import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/customer_model.dart';
import '../../../repository/api_repository/api_repo.dart';
import 'customer_screen_state.dart';

class CustomerScreenCubit extends Cubit<CustomerScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  CustomerScreenCubit() : super(CustomerScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getCustomerList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getCustomerList() async {
    try {
      final data = await _repo.getCustomerList();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(customerList: []));
      }, (success) {
        emit(state.copyWith(customerList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createCustomer(CustomerModel item) async {
    try {
      final data = await _repo.createCustomer(item);
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

  Future<void> updateCustomer(CustomerModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<CustomerModel> updatedList = List.from(state.customerList);
      final index = updatedList
          .indexWhere((element) => element.customerId == item.customerId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(customerList: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateCustomer(item);
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

  Future<void> deleteCustomer(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteCustomer(id);
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
