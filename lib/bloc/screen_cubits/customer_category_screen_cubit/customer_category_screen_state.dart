import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';

class CustomerCategoryScreenState extends Equatable {
  final List<CustomerCategoryModel> customerCategories;
  final Status status;

  const CustomerCategoryScreenState({
    required this.customerCategories,
    this.status = Status.initial,
  });

  CustomerCategoryScreenState copyWith({
    List<CustomerCategoryModel>? customerCategories,
    Status? status,
  }) {
    return CustomerCategoryScreenState(
      customerCategories: customerCategories ?? this.customerCategories,
      status: status ?? this.status,
    );
  }

  factory CustomerCategoryScreenState.initial() {
    return const CustomerCategoryScreenState(
      customerCategories: [],
    );
  }

  @override
  List<Object?> get props => [customerCategories, status];
}
