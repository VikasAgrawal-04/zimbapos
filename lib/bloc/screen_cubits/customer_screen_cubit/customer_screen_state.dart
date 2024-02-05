import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';

import '../../../models/global_models/customer_model.dart';

class CustomerScreenState extends Equatable {
  final List<CustomerModel> customerList;
  final Status status;

  const CustomerScreenState({
    required this.customerList,
    this.status = Status.initial,
  });

  CustomerScreenState copyWith({
    List<CustomerModel>? customerList,
    Status? status,
  }) {
    return CustomerScreenState(
      customerList: customerList ?? this.customerList,
      status: status ?? this.status,
    );
  }

  factory CustomerScreenState.initial() {
    return const CustomerScreenState(
      customerList: [],
    );
  }

  @override
  List<Object?> get props => [customerList, status];
}
