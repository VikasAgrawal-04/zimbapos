import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';

class UserRoleScreenState extends Equatable {
  final List<UserRolesModel> userRoles;
  final Status status;
  final TextEditingController roleName;

  const UserRoleScreenState(
      {required this.roleName, required this.userRoles, required this.status});

  UserRoleScreenState copyWith({
    List<UserRolesModel>? userRoles,
    Status? status,
    TextEditingController? roleName,
  }) {
    return UserRoleScreenState(
      userRoles: userRoles ?? this.userRoles,
      status: status ?? this.status,
      roleName: roleName ?? this.roleName,
    );
  }

  factory UserRoleScreenState.initial() {
    return UserRoleScreenState(
        roleName: TextEditingController(),
        userRoles: const [],
        status: Status.initial);
  }

  @override
  List<Object?> get props => [userRoles, status, roleName];
}
