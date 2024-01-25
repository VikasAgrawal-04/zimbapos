import 'package:equatable/equatable.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

class ItemSelectionState extends Equatable {
  final int selectedTile;
  final List<CategoryModel> categories;
  final List<MainGroupModel> mainGroups;
  final List<ItemGroupModel> itemGroups;

  const ItemSelectionState(
      {required this.selectedTile,
      required this.categories,
      required this.mainGroups,
      required this.itemGroups});

  @override
  List<Object?> get props => [categories, mainGroups, itemGroups,selectedTile];

  ItemSelectionState copyWith(
      {int? selectedTile,
      List<CategoryModel>? categories,
      List<MainGroupModel>? mainGroups,
      List<ItemGroupModel>? itemGroups}) {
    return ItemSelectionState(
        selectedTile: selectedTile ?? this.selectedTile,
        categories: categories ?? this.categories,
        mainGroups: mainGroups ?? this.mainGroups,
        itemGroups: itemGroups ?? this.itemGroups);
  }
}
