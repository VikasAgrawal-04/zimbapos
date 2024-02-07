import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_state.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

import '../../../global/utils/status_handler/status_handler.dart';
import '../../../repository/api_repository/api_repo.dart';

class TableScreenCubit extends Cubit<TableScreenState> {
  final ApiRepo _repo = ApiRepoImpl();

  TableScreenCubit() : super(TableScreenState.initial());

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    await getTableList();
    emit(state.copyWith(status: Status.success));
  }

  Future<void> getTableList() async {
    try {
      final data = await _repo.fetchTableList();
      data.fold((failure) {
        debugPrint(failure.toString());
        emit(state.copyWith(tableList: []));
      }, (success) {
        emit(state.copyWith(tableList: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> createTable(TableModel item) async {
    try {
      final data = await _repo.createTable(item);
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

  Future<void> updateTable(TableModel item, {bool? val}) async {
    //For State Management & Instant Reflection
    if (val != null) {
      List<TableModel> updatedList = List.from(state.tableList);
      final index =
          updatedList.indexWhere((element) => element.tableId == item.tableId);
      updatedList[index] = updatedList[index].copyWith(isActive: val);
      emit(state.copyWith(tableList: updatedList));
      item.isActive = val;
    }

    try {
      final data = await _repo.updateTable(item);
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

  Future<void> deleteTable(String id) async {
    try {
      EasyLoading.show();
      final res = await _repo.deleteTable(id);
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
