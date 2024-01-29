import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/response_models/item_response_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

class ItemSelectionCubit extends Cubit<ItemSelectionState> {
  final ApiRepo _repo = ApiRepoImpl();
  late List<CategoryModel> categories;
  late List<MainGroupModel> mainGroups;
  late List<ItemGroupModel> itemGroups;
  late List<ItemList> items;
  ItemSelectionCubit()
      : categories = [],
        mainGroups = [],
        itemGroups = [],
        items = [],
        super(ItemSelectionState.initial()) {
    init();
  }

  @override
  Future<void> close() {
    categories.clear();
    return super.close();
  }

  Future<void> init() async {
    await Future.wait([getCategories(), getMainGroups(), getAllItems()]);
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
        emit(state.copyWith(mainGroups: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getItemGroup(String id) async {
    emit(state.copyWith(itemGroups: []));
    try {
      final data = await _repo.fetchItemGroup(id);
      data.fold((failure) {
        debugPrint(failure.toString());
        itemGroups = <ItemGroupModel>[];
        emit(state.copyWith(itemGroups: itemGroups));
      }, (success) {
        itemGroups = success;
        emit(state.copyWith(itemGroups: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getAllItems() async {
    try {
      final data = await _repo.getAllItems();
      data.fold((failure) {
        items = <ItemList>[];
        debugPrint(failure.toString());
      }, (success) {
        items = success.data;
        emit(state.copyWith(items: items));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  void changeTile(int index) {
    emit(state.copyWith(selectedTile: index));
  }
}
