import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';

class CustomerCategoryScreenState extends Equatable {
  final List<CustomerCategoryModel> customerCategories;
  final Status status;
  final TextEditingController custCatName;
  final TextEditingController discount;

  const CustomerCategoryScreenState({
    required this.customerCategories,
    this.status = Status.initial,
    required this.custCatName,
    required this.discount,
  });

  CustomerCategoryScreenState copyWith({
    List<CustomerCategoryModel>? customerCategories,
    Status? status,
    TextEditingController? custCatName,
    TextEditingController? discount,
  }) {
    return CustomerCategoryScreenState(
      customerCategories: customerCategories ?? this.customerCategories,
      status: status ?? this.status,
      custCatName: custCatName ?? this.custCatName,
      discount: discount ?? this.discount,
    );
  }

  factory CustomerCategoryScreenState.initial() {
    return CustomerCategoryScreenState(
      customerCategories: const [],
      custCatName: TextEditingController(),
      discount: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        customerCategories,
        status,
        custCatName,
        discount,
      ];
}
