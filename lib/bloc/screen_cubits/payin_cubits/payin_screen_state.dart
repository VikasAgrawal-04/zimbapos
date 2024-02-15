import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/pay_in_model.dart';

class PayInScreenState extends Equatable {
  final List<PayInModel> payInList;
  final Status status;
  final TextEditingController amountController;
  final TextEditingController reasonController;
  const PayInScreenState({
    required this.payInList,
    this.status = Status.initial,
    required this.amountController,
    required this.reasonController,
  });

  PayInScreenState copyWith({
    List<PayInModel>? payInList,
    Status? status,
    TextEditingController? amountController,
    TextEditingController? reasonController,
    String? selectedRateSetId,
  }) {
    return PayInScreenState(
      payInList: payInList ?? this.payInList,
      status: status ?? this.status,
      amountController: amountController ?? this.amountController,
      reasonController: reasonController ?? this.reasonController,
    );
  }

  factory PayInScreenState.initial() {
    return PayInScreenState(
      payInList: const [],
      amountController: TextEditingController(),
      reasonController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        payInList,
        status,
        amountController,
        reasonController,
      ];
}
