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

  Future<void> createCustomer() async {
    try {
      final data = await _repo.createCustomer(CustomerModel(
          customerName: state.customerName.text,
          mobile: state.customerMobile.text,
          gender: state.gender,
          customerCategoryID: state.selectedCusCatId,
          anniversaryDate: state.anniversaryDate,
          dateOfBirth: state.dateOfBirth));
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
      }, (success) async {
        if (val == null) await init();
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

  //Functions for Customer Screens.

  void onCusCatChange(String? val) {
    emit(state.copyWith(selectedCusCatId: val));
  }

  void onGenderChange(String? val) {
    emit(state.copyWith(gender: val));
  }

  void onBirthChange(String? val) {
    emit(state.copyWith(dateOfBirth: val));
  }

  void onAnnivChange(String? val) {
    emit(state.copyWith(anniversaryDate: val));
  }

  void clearControllers() {
    emit(CustomerScreenState.initial());
    init();
  }

  void fillControllers(CustomerModel item) {
    emit(state.copyWith(
        customerName: TextEditingController(text: item.customerName),
        customerEmail: TextEditingController(text: item.email),
        customerMobile: TextEditingController(text: item.mobile),
        customerAddr1: TextEditingController(text: item.address1),
        customerAddr2: TextEditingController(text: item.address2),
        customerAddr3: TextEditingController(text: item.address3),
        customerCity: TextEditingController(text: item.city),
        customerState: TextEditingController(text: item.state),
        customerCountry: TextEditingController(text: item.country),
        customerPinCode: TextEditingController(text: item.pincode),
        customerGstNum: TextEditingController(text: item.gstNumber),
        creditLimitAmount: TextEditingController(text: item.creditLimitAmount),
        balanceBonuspoints:
            TextEditingController(text: item.balanceBonusPoints),
        selectedCusCatId: item.customerCategoryID,
        dateOfBirth: item.dateOfBirth,
        anniversaryDate: item.anniversaryDate,
        gender: item.gender));
  }
}
