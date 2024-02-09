import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

class AreasScreenState extends Equatable {
  final List<AreasModel> areaList;
  final Status status;
  final TextEditingController areaNameController;
  final TextEditingController extraChargePercentController;
  final String? selectedRateSetId;
  const AreasScreenState({
    required this.areaList,
    this.status = Status.initial,
    required this.areaNameController,
    required this.extraChargePercentController,
    this.selectedRateSetId,
  });

  AreasScreenState copyWith({
    List<AreasModel>? areaList,
    Status? status,
    TextEditingController? areaNameController,
    TextEditingController? extraChargePercentController,
    String? selectedRateSetId,
  }) {
    return AreasScreenState(
      areaList: areaList ?? this.areaList,
      status: status ?? this.status,
      areaNameController: areaNameController ?? this.areaNameController,
      extraChargePercentController:
          extraChargePercentController ?? this.extraChargePercentController,
      selectedRateSetId: selectedRateSetId ?? this.selectedRateSetId,
    );
  }

  factory AreasScreenState.initial() {
    return AreasScreenState(
      areaList: const [],
      areaNameController: TextEditingController(),
      extraChargePercentController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        areaList,
        status,
        areaNameController,
        extraChargePercentController,
        selectedRateSetId,
      ];
}
