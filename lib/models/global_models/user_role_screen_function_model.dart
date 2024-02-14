import 'dart:convert';

import 'package:isar/isar.dart';

part 'user_role_screen_function_model.g.dart';

@collection
class UserRoleScreenFunctionModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? roleId;
  String? screenFunctionId;
  String? screenFunctionName;
  bool? canView;
  bool? canChange;

  UserRoleScreenFunctionModel(
      {this.id = Isar.autoIncrement,
      this.outletId,
      this.roleId,
      this.screenFunctionId,
      this.canView,
      this.canChange,
      this.screenFunctionName});

  UserRoleScreenFunctionModel copyWith({
    Id? id,
    String? outletId,
    String? roleId,
    String? screenFunctionId,
    bool? canView,
    String? screenFunctionName,
    bool? canChange,
  }) {
    return UserRoleScreenFunctionModel(
      id: id ?? this.id,
      screenFunctionName: screenFunctionName ?? this.screenFunctionName,
      outletId: outletId ?? this.outletId,
      roleId: roleId ?? this.roleId,
      screenFunctionId: screenFunctionId ?? this.screenFunctionId,
      canView: canView ?? this.canView,
      canChange: canChange ?? this.canChange,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'roleId': roleId,
      'screenFunctionName': screenFunctionName,
      'screenFunctionId': screenFunctionId,
      'canView': canView,
      'canChange': canChange,
    };
  }

  factory UserRoleScreenFunctionModel.fromMap(Map<String, dynamic> map) {
    return UserRoleScreenFunctionModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      roleId: map['roleId'] != null ? map['roleId'] as String : null,
      screenFunctionId: map['screenFunctionId'] != null
          ? map['screenFunctionId'] as String
          : null,
      screenFunctionName: map['screenFunctionName'] != null
          ? map['screenFunctionName'] as String
          : null,
      canView: map['canView'] != null ? map['canView'] as bool : true,
      canChange: map['canChange'] != null ? map['canChange'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRoleScreenFunctionModel.fromJson(String source) =>
      UserRoleScreenFunctionModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
