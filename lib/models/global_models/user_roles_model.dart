import 'dart:convert';

import 'package:isar/isar.dart';

part 'user_roles_model.g.dart';

@collection
class UserRolesModel {
  Id id = Isar.autoIncrement;
  String? roleId;
  String? roleName;
  bool? isActive;
  bool? isDeleted;

  UserRolesModel(
      {this.id = Isar.autoIncrement,
      this.roleId,
      this.roleName,
      this.isActive = true,
      this.isDeleted = false});

  UserRolesModel copyWith({
    Id? id,
    String? roleId,
    String? roleName,
    bool? isActive,
    bool? isDeleted,
  }) {
    return UserRolesModel(
      id: id ?? this.id,
      roleId: roleId ?? this.roleId,
      roleName: roleName ?? this.roleName,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'roleId': roleId,
      'roleName': roleName,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory UserRolesModel.fromMap(Map<String, dynamic> map) {
    return UserRolesModel(
      id: map['id'] ?? Isar.autoIncrement,
      roleId: map['roleId'] != null ? map['roleId'] as String : null,
      roleName: map['roleName'] != null ? map['roleName'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : true,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRolesModel.fromJson(String source) =>
      UserRolesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserRolesModel(id: $id, roleId: $roleId, roleName: $roleName, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant UserRolesModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.roleId == roleId &&
        other.roleName == roleName &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        roleId.hashCode ^
        roleName.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
