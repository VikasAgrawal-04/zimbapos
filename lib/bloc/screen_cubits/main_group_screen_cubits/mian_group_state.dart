import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

class MainGroupScreenState extends Equatable {
  final List<MainGroupModel> mainGroupList;
  final Status status;
  final TextEditingController mainGroupNameController;
  final String? catId;

  const MainGroupScreenState({
    required this.mainGroupList,
    this.status = Status.initial,
    required this.mainGroupNameController,
    this.catId,
  });

  MainGroupScreenState copyWith({
    List<MainGroupModel>? mainGroupList,
    Status? status,
    TextEditingController? mainGroupNameController,
    String? catId,
  }) {
    return MainGroupScreenState(
      mainGroupList: mainGroupList ?? this.mainGroupList,
      status: status ?? this.status,
      mainGroupNameController:
          mainGroupNameController ?? this.mainGroupNameController,
      catId: catId ?? this.catId,
    );
  }

  factory MainGroupScreenState.initial() {
    return MainGroupScreenState(
      mainGroupList: const [],
      mainGroupNameController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        mainGroupList,
        status,
        mainGroupNameController,
        catId,
      ];
}
