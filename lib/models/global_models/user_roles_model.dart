import 'dart:convert';

import 'package:isar/isar.dart';

part 'user_roles_model.g.dart';

@collection
class UserRolesModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? roleId;
  String? roleName;
  bool? isActive;
  bool? isDeleted;

  UserRolesModel(
      {this.id = Isar.autoIncrement,
      this.roleId,
      this.outletId,
      this.roleName,
      this.isActive = true,
      this.isDeleted = false});

  UserRolesModel copyWith({
    Id? id,
    String? roleId,
    String? outletId,
    String? roleName,
    bool? isActive,
    bool? isDeleted,
  }) {
    return UserRolesModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      roleId: roleId ?? this.roleId,
      roleName: roleName ?? this.roleName,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'roleId': roleId,
      'roleName': roleName,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory UserRolesModel.fromMap(Map<String, dynamic> map) {
    return UserRolesModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      roleId: map['roleId'] != null ? map['roleId'] as String : null,
      roleName: map['roleName'] != null ? map['roleName'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : true,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRolesModel.fromJson(String source) =>
      UserRolesModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
