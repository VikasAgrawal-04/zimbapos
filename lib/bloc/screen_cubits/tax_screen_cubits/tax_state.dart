import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';

import '../../../models/global_models/tax_model.dart';

class TaxScreenState extends Equatable {
  final List<TaxModel> taxList;
  final Status status;
  final TextEditingController taxNameController;
  final TextEditingController taxPercentController;
  final String? taxType;

  const TaxScreenState({
    required this.taxList,
    this.status = Status.initial,
    required this.taxNameController,
    required this.taxPercentController,
    this.taxType,
  });

  TaxScreenState copyWith({
    List<TaxModel>? taxList,
    Status? status,
    TextEditingController? taxNameController,
    TextEditingController? taxPercentController,
    String? taxType,
  }) {
    return TaxScreenState(
      taxList: taxList ?? this.taxList,
      status: status ?? this.status,
      taxNameController: taxNameController ?? this.taxNameController,
      taxPercentController: taxPercentController ?? this.taxPercentController,
      taxType: taxType ?? this.taxType,
    );
  }

  factory TaxScreenState.initial() {
    return TaxScreenState(
      taxList: const [],
      taxNameController: TextEditingController(),
      taxPercentController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        taxList,
        status,
        taxNameController,
        taxType,
      ];
}
