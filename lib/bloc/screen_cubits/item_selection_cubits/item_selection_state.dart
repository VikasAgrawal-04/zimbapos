import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

class ItemSelectionState extends Equatable {
  final TextEditingController searchController;
  final int selectedTile;
  final List<CategoryModel> categories;
  final List<MainGroupModel> mainGroups;
  final List<ItemGroupModel> itemGroups;

  const ItemSelectionState(
      {required this.searchController,
      required this.selectedTile,
      required this.categories,
      required this.mainGroups,
      required this.itemGroups});

  @override
  List<Object?> get props =>
      [categories, mainGroups, itemGroups, selectedTile, searchController];

  factory ItemSelectionState.initial() {
    return ItemSelectionState(
        searchController: TextEditingController(),
        selectedTile: -1,
        categories: const [],
        mainGroups: const [],
        itemGroups: const []);
  }

  ItemSelectionState copyWith(
      {TextEditingController? searchController,
      int? selectedTile,
      List<CategoryModel>? categories,
      List<MainGroupModel>? mainGroups,
      List<ItemGroupModel>? itemGroups}) {
    return ItemSelectionState(
        searchController: searchController ?? this.searchController,
        selectedTile: selectedTile ?? this.selectedTile,
        categories: categories ?? this.categories,
        mainGroups: mainGroups ?? this.mainGroups,
        itemGroups: itemGroups ?? this.itemGroups);
  }
}
