import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

class ItemSelectionCubit extends Cubit<ItemSelectionState> {
  final ApiRepo _repo = ApiRepoImpl();
  late List<CategoryModel> categories;
  late List<MainGroupModel> mainGroups;
  late List<ItemGroupModel> itemGroups;
  ItemSelectionCubit()
      : super(const ItemSelectionState(
            categories: [], mainGroups: [], itemGroups: [])) {
    init();
  }

  @override
  Future<void> close() {
    categories.clear();
    return super.close();
  }

  Future<void> init() async {
    await Future.wait([getCategories(), getMainGroups()]);
  }

  Future<void> getCategories() async {
    try {
      final data = await _repo.fetchCategories();
      data.fold((failure) {
        debugPrint(failure.toString());
        categories = <CategoryModel>[];
        emit(state.copyWith(categories: categories));
      }, (success) {
        categories = success;
        emit(state.copyWith(categories: categories));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getMainGroups() async {
    try {
      final data = await _repo.fetchMainGroup();
      data.fold((failure) {
        debugPrint(failure.toString());
        mainGroups = <MainGroupModel>[];
        emit(state.copyWith(mainGroups: mainGroups));
      }, (success) {
        mainGroups = success;
        getItemGroup(success.first.mainGroupId!);
        emit(state.copyWith(mainGroups: mainGroups));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getItemGroup(String id) async {
    try {
      final data = await _repo.fetchItemGroup(id);
      data.fold((failure) {
        debugPrint(failure.toString());
        itemGroups = <ItemGroupModel>[];
        emit(state.copyWith(itemGroups: itemGroups));
      }, (success) {
        itemGroups = success;
        emit(state.copyWith(itemGroups: itemGroups));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }
}
