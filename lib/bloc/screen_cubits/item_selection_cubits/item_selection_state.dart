import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
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
  final List<WorkersModel> waiters;
  final String? waiterId;
  final String? waiterName;
  final String? pax;
  final String? customerId;
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
      required this.tableBill,
      required this.waiters,
      this.waiterId,
      this.waiterName,
      this.pax,
      this.customerId});

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
        tableBill,
        waiters,
        waiterId,
        pax,
        waiterName,
        customerId
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
        tableBill: TempBillRequestModel(),
        waiters: const []);
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
      TempBillRequestModel? tableBill,
      List<WorkersModel>? waiters,
      String? waiterId,
      String? pax,
      String? waiterName,
      String? customerId}) {
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
        tableBill: tableBill ?? this.tableBill,
        waiters: waiters ?? this.waiters,
        waiterId: waiterId ?? this.waiterId,
        pax: pax ?? this.pax,
        waiterName: waiterName ?? this.waiterName,
        customerId: customerId ?? this.customerId);
  }
}
