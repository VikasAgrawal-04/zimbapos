import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/request_models/temp_bill_request_model.dart';
import 'package:zimbapos/models/response_models/item_response_model.dart';

class ItemSelectionState extends Equatable {
  final TextEditingController searchController;
  final int selectedTile;
  final List<CategoryModel> categories;
  final List<MainGroupModel> mainGroups;
  final List<ItemGroupModel> itemGroups;
  final List<ItemList> items;
  final List<ItemList> filteredItems;
  final List<ItemList> addedItems;
  final List<ItemList> itemsById;
  final TempBillRequestModel tableBill;
  const ItemSelectionState(
      {required this.searchController,
      required this.selectedTile,
      required this.categories,
      required this.mainGroups,
      required this.itemGroups,
      required this.items,
      required this.filteredItems,
      required this.addedItems,
      required this.itemsById,
      required this.tableBill});

  @override
  List<Object?> get props => [
        categories,
        mainGroups,
        itemGroups,
        selectedTile,
        searchController,
        items,
        filteredItems,
        addedItems,
        itemsById,
        tableBill
      ];

  factory ItemSelectionState.initial() {
    return ItemSelectionState(
        searchController: TextEditingController(),
        selectedTile: -1,
        categories: const [],
        mainGroups: const [],
        itemGroups: const [],
        items: const [],
        filteredItems: const [],
        addedItems: const [],
        itemsById: const [],
        tableBill: TempBillRequestModel());
  }

  ItemSelectionState copyWith(
      {TextEditingController? searchController,
      int? selectedTile,
      List<CategoryModel>? categories,
      List<MainGroupModel>? mainGroups,
      List<ItemList>? items,
      List<ItemGroupModel>? itemGroups,
      List<ItemList>? filteredItems,
      List<ItemList>? itemsById,
      List<ItemList>? addedItems,
      final TempBillRequestModel? tableBill}) {
    return ItemSelectionState(
        searchController: searchController ?? this.searchController,
        selectedTile: selectedTile ?? this.selectedTile,
        categories: categories ?? this.categories,
        mainGroups: mainGroups ?? this.mainGroups,
        itemGroups: itemGroups ?? this.itemGroups,
        items: items ?? this.items,
        filteredItems: filteredItems ?? this.filteredItems,
        addedItems: addedItems ?? this.addedItems,
        itemsById: itemsById ?? this.itemsById,
        tableBill: tableBill ?? this.tableBill);
  }
}
