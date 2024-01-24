import 'package:equatable/equatable.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

class ItemSelectionState extends Equatable {
  final List<CategoryModel> categories;

  const ItemSelectionState({required this.categories});

  @override
  List<Object?> get props => [categories];

  ItemSelectionState copyWith({
    List<CategoryModel>? categories,
  }) {
    return ItemSelectionState(
      categories: categories ?? this.categories,
    );
  }
}
