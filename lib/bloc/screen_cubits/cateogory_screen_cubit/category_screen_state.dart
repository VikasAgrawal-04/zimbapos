import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

class CategoryScreenState extends Equatable {
  final List<CategoryModel> categories;
  final Status status;
  final TextEditingController categoryName;
  const CategoryScreenState({
    required this.categories,
    this.status = Status.initial,
    required this.categoryName,
  });

  CategoryScreenState copyWith({
    List<CategoryModel>? categories,
    Status? status,
    TextEditingController? categoryName,
  }) {
    return CategoryScreenState(
      categories: categories ?? this.categories,
      status: status ?? this.status,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  factory CategoryScreenState.initial() {
    return CategoryScreenState(
      categories: const [],
      categoryName: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        categories,
        status,
        categoryName,
      ];
}
