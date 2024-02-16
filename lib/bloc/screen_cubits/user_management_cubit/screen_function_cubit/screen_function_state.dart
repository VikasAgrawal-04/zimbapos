import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';

class ScreenFunctionState extends Equatable {
  final List<SFMappingModel> sfList;
  final Status status;

  const ScreenFunctionState({required this.status, required this.sfList});

  factory ScreenFunctionState.initial() {
    return const ScreenFunctionState(sfList: [], status: Status.loading);
  }

  @override
  List<Object?> get props => [sfList, status];

  ScreenFunctionState copyWith({
    List<SFMappingModel>? sfList,
    Status? status,
  }) {
    return ScreenFunctionState(
      sfList: sfList ?? this.sfList,
      status: status ?? this.status,
    );
  }
}
