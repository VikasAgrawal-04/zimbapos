import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../repository/api_repository/api_repo.dart';
import 'customer_category_screen_state.dart';

class CustomerCategoryScreenCubit extends Cubit<CustomerCategoryScreenState> {
  final ApiRepo _repo = ApiRepoImpl();
  late List<CustomerCategoryModel> customerCategories;
  late List<CustomerCategoryModel> filteredCusCats;

  CustomerCategoryScreenCubit()
      : customerCategories = [],
        filteredCusCats = [],
        super(CustomerCategoryScreenState.initial()) {
    init();
  }

  @override
  Future<void> close() {
    state.props.clear();
    return super.close();
  }

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getCustomerCategories();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getCustomerCategories() async {
    try {
      final data = await _repo.getCustomerCategories();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(customerCategories: []));
      }, (success) {
        emit(state.copyWith(customerCategories: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createCustomerCategories(CustomerCategoryModel item) async {
    try {
      item.outletId = await Helpers.getOutletId();
      final data = await _repo.createCustomerCategories(item);
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

  Future<void> updateCustomerCategory(CustomerCategoryModel item,
      {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<CustomerCategoryModel> updatedList =
          List.from(state.customerCategories);
      final index = updatedList.indexWhere(
          (element) => element.custCategoryId == item.custCategoryId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(customerCategories: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateCustomerCategory(item);
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

  Future<void> deleteCustomerCategory(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteCustomerCategory(id);
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
    emit(CustomerCategoryScreenState.initial());
    init();
  }

  void fillControllers(CustomerCategoryModel item) {
    emit(
      state.copyWith(
        custCatName: TextEditingController(text: item.custCategoryName),
        discount: TextEditingController(
          text: item.custCategoryDiscount.toString(),
        ),
      ),
    );
  }

  void searchItems(String query) {
    List<CustomerCategoryModel> allItems = List.from(customerCategories);
    if (query.isEmpty) {
      allItems.clear();
      allItems.addAll(customerCategories);
    } else {
      allItems.clear();
      for (final item in customerCategories) {
        if (item.custCategoryName!
            .toLowerCase()
            .contains(query.toLowerCase())) {
          allItems.add(item);
        }
      }
    }
    filteredCusCats = allItems;
    emit(state.copyWith(filteredCusCats: filteredCusCats));
  }
}
