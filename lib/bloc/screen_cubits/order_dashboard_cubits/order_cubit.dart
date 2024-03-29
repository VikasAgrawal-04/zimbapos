import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/order_dashboard_cubits/order_dashboard_state.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

class OrderDashboardCubit extends Cubit<OrderDashboardState> {
  final ApiRepo _repo = ApiRepoImpl();
  int selectedTab;
  List<AreasModel> _fetchedAreas = [];

  OrderDashboardCubit()
      : selectedTab = 0,
        super(OrderDashboardInitial()) {
    fetchAreas();
  }

  void onTabChanged(int index) {
    EasyLoading.show(maskType: EasyLoadingMaskType.black);
    selectedTab = index;
    final areas = (state as OrderDashboardLoaded).areas;
    final id = areas[index].areaId;
    fetchTableByArea(id ?? "");
  }

  Future<void> fetchAreas() async {
    emit(OrderDashboardLoading());
    try {
      final data = await _repo.getAreas();
      data.fold((failure) {
        emit(OrderDashboardError(failure.toString()));
      }, (success) {
        _fetchedAreas = success;
        emit(OrderDashboardLoaded(_fetchedAreas, const [], selectedTab));
        if (success.isNotEmpty) {
          fetchTableByArea(success.first.areaId ?? "");
        }
      });
    } catch (e) {
      emit(OrderDashboardError(e.toString()));
    }
  }

  Future<void> fetchTableByArea(String id) async {
    try {
      final data = await _repo.getTableByArea(id);
      EasyLoading.dismiss();
      data.fold((failure) {
        emit(OrderDashboardError(failure.toString()));
      }, (success) {
        emit(OrderDashboardLoaded(_fetchedAreas, success, selectedTab));
      });
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      emit(OrderDashboardError(e.toString()));
    }
  }
}
