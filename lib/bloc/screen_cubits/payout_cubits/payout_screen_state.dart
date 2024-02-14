import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';

import '../../../models/global_models/pay_out_model.dart';

class PayOutScreenState extends Equatable {
  final List<PayOutModel> payOutList;
  final Status status;
  final TextEditingController amountController;
  final TextEditingController reasonController;
  const PayOutScreenState({
    required this.payOutList,
    this.status = Status.initial,
    required this.amountController,
    required this.reasonController,
  });

  PayOutScreenState copyWith({
    List<PayOutModel>? payOutList,
    Status? status,
    TextEditingController? amountController,
    TextEditingController? reasonController,
    String? selectedRateSetId,
  }) {
    return PayOutScreenState(
      payOutList: payOutList ?? this.payOutList,
      status: status ?? this.status,
      amountController: amountController ?? this.amountController,
      reasonController: reasonController ?? this.reasonController,
    );
  }

  factory PayOutScreenState.initial() {
    return PayOutScreenState(
      payOutList: const [],
      amountController: TextEditingController(),
      reasonController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        payOutList,
        status,
        amountController,
        reasonController,
      ];
}
