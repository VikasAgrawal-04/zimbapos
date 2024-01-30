import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/response_models/item_response_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

enum OnClick { add, subtract }

class ItemSelectionCubit extends Cubit<ItemSelectionState> {
  final ApiRepo _repo = ApiRepoImpl();
  late List<CategoryModel> categories;
  late List<MainGroupModel> mainGroups;
  late List<ItemGroupModel> itemGroups;
  late List<ItemList> items;
  late List<ItemList> filteredItems;
  late List<ItemList> addedItems;
  ItemSelectionCubit()
      : categories = [],
        mainGroups = [],
        itemGroups = [],
        items = [],
        filteredItems = [],
        addedItems = [],
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
        filteredItems = success.data;
        emit(state.copyWith(items: items, filteredItems: filteredItems));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  void changeTile(int index) {
    emit(state.copyWith(selectedTile: index));
  }

  void onItemClick({required OnClick action, required ItemList item}) {
    switch (action) {
      case OnClick.add:
        return addOrIncProduct(item);
      case OnClick.subtract:
        return removeOrDecProduct(item);
    }
  }

  void addOrIncProduct(ItemList item) {
    List<ItemList> updatedAddedItems = List.from(addedItems);

    int index = updatedAddedItems
        .indexWhere((element) => element.itemId == item.itemId);
    if (index != -1) {
      // If item exists, update the quantity
      updatedAddedItems[index] = updatedAddedItems[index]
          .copyWith(quantity: updatedAddedItems[index].quantity + 1);
    } else {
      // If item doesn't exist, add it with quantity 1
      updatedAddedItems.add(item.copyWith(quantity: 1));
    }
    addedItems = updatedAddedItems;
    emit(state.copyWith(addedItems: addedItems));
  }

  void removeOrDecProduct(ItemList item) {
    List<ItemList> updatedAddedItems = List.from(addedItems);

    int index = updatedAddedItems
        .indexWhere((element) => element.itemId == item.itemId);

    if (index != -1) {
      if (updatedAddedItems[index].quantity > 1) {
        // If item exists, update the quantity
        updatedAddedItems[index] = updatedAddedItems[index]
            .copyWith(quantity: updatedAddedItems[index].quantity - 1);
      } else {
        // If item doesn't exist, remove it from the list 1
        updatedAddedItems.removeAt(index);
      }
    }
    addedItems = updatedAddedItems;
    emit(state.copyWith(addedItems: addedItems));
  }
}
