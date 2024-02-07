import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

class AreasScreenState extends Equatable {
  final List<AreasModel> areaList;
  final Status status;
  const AreasScreenState({
    required this.areaList,
    this.status = Status.initial,
  });

  AreasScreenState copyWith({
    List<AreasModel>? areaList,
    Status? status,
  }) {
    return AreasScreenState(
        areaList: areaList ?? this.areaList, status: status ?? this.status);
  }

  factory AreasScreenState.initial() {
    return const AreasScreenState(areaList: []);
  }

  @override
  List<Object?> get props => [areaList, status];
}
