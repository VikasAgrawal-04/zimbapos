import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/pay_mod_master_model.dart';

class PayModMasterScreenState extends Equatable {
  final List<PayModMasterModel> payModMasterList;
  final Status status;
  final TextEditingController payTypeController;
  final String? paytypeName;
  final bool isOthers;

  const PayModMasterScreenState({
    required this.payModMasterList,
    this.status = Status.initial,
    required this.payTypeController,
    this.paytypeName,
    this.isOthers = false,
  });

  PayModMasterScreenState copyWith({
    List<PayModMasterModel>? payModMasterList,
    Status? status,
    TextEditingController? payTypeController,
    String? paytypeName,
    bool? isOthers,
  }) {
    return PayModMasterScreenState(
      payModMasterList: payModMasterList ?? this.payModMasterList,
      status: status ?? this.status,
      payTypeController: payTypeController ?? this.payTypeController,
      paytypeName: paytypeName ?? this.paytypeName,
      isOthers: isOthers ?? this.isOthers,
    );
  }

  factory PayModMasterScreenState.initial() {
    return PayModMasterScreenState(
      payModMasterList: const [],
      payTypeController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        payModMasterList,
        status,
        payTypeController,
        paytypeName,
        isOthers,
      ];
}
