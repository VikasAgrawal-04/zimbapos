import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../repository/api_repository/api_repo.dart';
import 'customer_category_screen_state.dart';

class CustomerCategoryScreenCubit extends Cubit<CustomerCategoryScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  CustomerCategoryScreenCubit() : super(CustomerCategoryScreenState.initial());

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
}
