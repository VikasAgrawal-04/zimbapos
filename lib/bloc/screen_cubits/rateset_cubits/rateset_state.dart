import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';

import '../../../models/global_models/rate_sets_model.dart';

class RateSetScreenState extends Equatable {
  final List<RateSetsModel> rateSetList;
  final Status status;
  final TextEditingController rateSetNameController;

  const RateSetScreenState({
    required this.rateSetList,
    this.status = Status.initial,
    required this.rateSetNameController,
  });

  RateSetScreenState copyWith({
    List<RateSetsModel>? rateSetList,
    Status? status,
    TextEditingController? rateSetNameController,
  }) {
    return RateSetScreenState(
      rateSetList: rateSetList ?? this.rateSetList,
      status: status ?? this.status,
      rateSetNameController:
          rateSetNameController ?? this.rateSetNameController,
    );
  }

  factory RateSetScreenState.initial() {
    return RateSetScreenState(
      rateSetList: const [],
      rateSetNameController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        rateSetList,
        status,
        rateSetNameController,
      ];
}
