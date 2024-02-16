import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';

class CustomerCategoryScreenState extends Equatable {
  final TextEditingController searchController;
  final List<CustomerCategoryModel> customerCategories;
  final List<CustomerCategoryModel> filteredCusCats;
  final Status status;
  final TextEditingController custCatName;
  final TextEditingController discount;

  const CustomerCategoryScreenState({
    required this.searchController,
    required this.customerCategories,
    required this.filteredCusCats,
    this.status = Status.initial,
    required this.custCatName,
    required this.discount,
  });

  CustomerCategoryScreenState copyWith({
    TextEditingController? searchController,
    List<CustomerCategoryModel>? customerCategories,
    List<CustomerCategoryModel>? filteredCusCats,
    Status? status,
    TextEditingController? custCatName,
    TextEditingController? discount,
  }) {
    return CustomerCategoryScreenState(
      searchController: searchController ?? this.searchController,
      customerCategories: customerCategories ?? this.customerCategories,
      filteredCusCats: filteredCusCats ?? this.filteredCusCats,
      status: status ?? this.status,
      custCatName: custCatName ?? this.custCatName,
      discount: discount ?? this.discount,
    );
  }

  factory CustomerCategoryScreenState.initial() {
    return CustomerCategoryScreenState(
      searchController: TextEditingController(),
      filteredCusCats: const [],
      customerCategories: const [],
      custCatName: TextEditingController(),
      discount: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        searchController,
        searchController,
        customerCategories,
        status,
        custCatName,
        discount,
      ];
}
