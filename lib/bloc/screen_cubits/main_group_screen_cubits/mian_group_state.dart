import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

class MainGroupScreenState extends Equatable {
  final List<MainGroupModel> mainGroupList;
  final Status status;

  const MainGroupScreenState({
    required this.mainGroupList,
    this.status = Status.initial,
  });

  MainGroupScreenState copyWith({
    List<MainGroupModel>? mainGroupList,
    Status? status,
  }) {
    return MainGroupScreenState(
      mainGroupList: mainGroupList ?? this.mainGroupList,
      status: status ?? this.status,
    );
  }

  factory MainGroupScreenState.initial() {
    return const MainGroupScreenState(
      mainGroupList: [],
    );
  }

  @override
  List<Object?> get props => [mainGroupList, status];
}
