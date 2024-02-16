import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/screen_function_junction_model.dart';

class SfRoleJunctionState extends Equatable {
  final List<ScreenFunctionJunctionModel> sfRoleList;
  final Status status;
  final String? roleId;
  final List<String>? functionId;
  final List<bool>? canView;
  final List<bool>? canEdit;

  const SfRoleJunctionState(
      {required this.sfRoleList,
      required this.status,
      this.roleId,
      this.functionId,
      this.canEdit,
      this.canView});

  factory SfRoleJunctionState.initial() {
    return const SfRoleJunctionState(sfRoleList: [], status: Status.initial);
  }

  @override
  List<Object?> get props =>
      [sfRoleList, status, roleId, functionId, canView, canEdit];

  SfRoleJunctionState copyWith({
    List<ScreenFunctionJunctionModel>? sfRoleList,
    Status? status,
    String? roleId,
    List<String>? functionId,
    List<bool>? canView,
    List<bool>? canEdit,
  }) {
    return SfRoleJunctionState(
      sfRoleList: sfRoleList ?? this.sfRoleList,
      status: status ?? this.status,
      roleId: roleId ?? this.roleId,
      functionId: functionId ?? this.functionId,
      canView: canView ?? this.canView,
      canEdit: canEdit ?? this.canEdit,
    );
  }
}
