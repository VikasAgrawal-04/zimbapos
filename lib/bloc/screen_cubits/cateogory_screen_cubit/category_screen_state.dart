import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

class CategoryScreenState extends Equatable {
  final List<CategoryModel> categories;
  final Status status;
  const CategoryScreenState(
      {required this.categories, this.status = Status.initial});

  CategoryScreenState copyWith({
    List<CategoryModel>? categories,
    Status? status,
  }) {
    return CategoryScreenState(
        categories: categories ?? this.categories,
        status: status ?? this.status);
  }

  factory CategoryScreenState.initial() {
    return const CategoryScreenState(categories: []);
  }

  @override
  List<Object?> get props => [categories, status];
}
